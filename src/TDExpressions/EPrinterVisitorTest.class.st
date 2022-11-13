Class {
	#name : #EPrinterVisitorTest,
	#superclass : #TestCase,
	#category : #TDExpressions
}

{ #category : #tests }
EPrinterVisitorTest >> testPrintAddition [
	| expression |
	
	expression := EAddition left: (EConstant value: 4) right: (EConstant value: 2).
	
	self assert: (expression accept: EPrinterVisitor new) equals: '(4 + 2)'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintConstant [
	| constant |
	
	constant := EConstant value: 4.
	
	self assert: (constant accept: EPrinterVisitor new) equals: '4'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintDivision [ 
	| expression |
	
	expression := EDivision numerator: (EConstant value: 4) denominator: (EConstant value: 2).
	
	self assert: (expression accept: EPrinterVisitor new) equals: '(4 / 2)'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintMultiplication [ 
	| expression |
	
	expression := EMultiplication left: (EConstant value: 4) right: (EConstant value: 2).
	
	self assert: (expression accept: EPrinterVisitor new) equals: '(4 * 2)'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintNegation [ 
	| expression |
	
	expression := ENegation expression: (EConstant value: 4).
	
	self assert: (expression accept: EPrinterVisitor new) equals: '-4'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintVariable [ 
	| expression visitor |
	
	expression := EVariable id: #answerToTheQuestion.
	visitor := EPrinterVisitor new.
	visitor at: #answerToTheQuestion put: 42.
	
	self assert: (expression accept: visitor) equals: '42'
]
