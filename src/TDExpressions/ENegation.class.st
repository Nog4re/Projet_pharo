Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #TDExpressions
}

{ #category : #accessing }
ENegation class >> expression: anExpression [

	^ self new expression: anExpression.
]

{ #category : #visiting }
ENegation >> accept: aVisitor [
	^ aVisitor visitNegation: self
]

{ #category : #accessing }
ENegation >> expression [
	^expression 
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	expression:= anExpression 
]

{ #category : #arithmetic }
ENegation >> negated [
	^ expression
]

{ #category : #printing }
ENegation >> printOn: aStream [
	aStream nextPutAll: '- '.
	expression printOn: aStream.
]
