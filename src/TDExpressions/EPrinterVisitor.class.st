Class {
	#name : #EPrinterVisitor,
	#superclass : #Object,
	#classVars : [
		'bindings'
	],
	#category : #TDExpressions
}

{ #category : #accessing }
EPrinterVisitor >> at: anId put: aValue [
	bindings at: anId put: aValue
]

{ #category : #accessing }
EPrinterVisitor >> initialize [
	
	bindings := Dictionary new
]

{ #category : #visiting }
EPrinterVisitor >> visitAddition: anAddition [
	| left right |
	
	left := anAddition left accept: self.
	right := anAddition right accept: self.
	
	^ '(', left, ' + ', right, ')'
]

{ #category : #accessing }
EPrinterVisitor >> visitConstant: aConstant [
	^ aConstant value asString
]

{ #category : #accessing }
EPrinterVisitor >> visitDivision: aDivision [
	| left right |
	
	left := aDivision left accept: self.
	right := aDivision right accept: self.
	
	^ '(', left, ' / ', right, ')'
]

{ #category : #accessing }
EPrinterVisitor >> visitMultiplication: aMultiplication [
	| left right |
	
	left := aMultiplication left accept: self.
	right := aMultiplication right accept: self.
	
	^ '(', left, ' * ', right, ')'
]

{ #category : #accessing }
EPrinterVisitor >> visitNegation: aNegation [
	^ '-', (aNegation expression accept: self)
]

{ #category : #accessing }
EPrinterVisitor >> visitVariable: aVariable [
	^ (bindings at: (aVariable id)) asString
]
