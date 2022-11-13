Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #TDExpressions
}

{ #category : #'instance creation' }
EBinaryExpression class >> left: aConstant right: aConstant2 [
	| expression |
	
	expression := self new.
	expression left: aConstant.
 	expression right: aConstant2.
	
	^ expression
]

{ #category : #visiting }
EBinaryExpression >> accept: aVisitor [
	^ self subclassResponsibility
]

{ #category : #accessing }
EBinaryExpression >> left [

	^ left
]

{ #category : #accessing }
EBinaryExpression >> left: anExpression [
	left:= anExpression 
]

{ #category : #'as yet unclassified' }
EBinaryExpression >> operatorString [
	^ self subclassResponsibility
]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'.
]

{ #category : #accessing }
EBinaryExpression >> right [

	^ right
]

{ #category : #accessing }
EBinaryExpression >> right: anExpression [
	right:= anExpression 
]
