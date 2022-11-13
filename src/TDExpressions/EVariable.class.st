Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #TDExpressions
}

{ #category : #accessing }
EVariable >> evaluateWith: aBindingDictionary [
	^ aBindingDictionary at: id
]

{ #category : #accessing }
EVariable >> id: aSymbole [
	id:= aSymbole 
]

{ #category : #accessing }
EVariable >> printOn: aStream [
	aStream nexPutAll: id asString
]
