#!/usr/bin/env groovy

def dir = '.' as File
def files = dir.listFiles().findAll{ it.name.endsWith('.txt') }

files.each{ f ->
	def lines = f.readLines('UTF-8')*.trim().findAll{ it.length() > 0 }.collect{
		return java.util.regex.Pattern.compile(it).pattern()
	}.toSorted(String.CASE_INSENSITIVE_ORDER).unique(String.CASE_INSENSITIVE_ORDER)

	println "${f.name}: ${lines.size()}"
	f.setText(lines.join('\n'))
}
