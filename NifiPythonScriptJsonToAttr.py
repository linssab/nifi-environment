
import json
import java.io
from org.apache.commons.io import IOUtils
from java.nio.charset import StandardCharsets
from org.apache.nifi.processor.io import InputStreamCallback


class AttributeExtract(InputStreamCallback):
	def __init__(self):
		pass
	
	def process(self, inputStream):
		self.attributes = {}
		text = IOUtils.toString(inputStream, StandardCharsets.UTF_8)
		obj = json.loads(text)
		for key in obj.keys():
			self.attributes[key] = '%s' % str(obj[key])
			

flowFile = session.get()

if (flowFile!=None):
	try:
		reader = AttributeExtract()
		session.read(flowFile, reader)
		flowFile = session.putAllAttributes(flowFile, reader.attributes)
		session.transfer(flowFile, REL_SUCCESS)
	
	except Exception as e:
		attrMap = {}
		attrMap["Script.Exception"] = e
		flowfile = session.putAllAttributes(flowFile, attrMap)
		session.transfer(flowFile, REL_FAILURE)

session.commit()
