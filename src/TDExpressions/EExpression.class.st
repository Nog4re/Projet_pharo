Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #TDExpressions
}

{ #category : #visiting }
EExpression >> accept: aVisitor [
	self subclassResponsibility
]

{ #category : #'public access' }
EExpression >> negated [
	^ENegation new expression: self
]
