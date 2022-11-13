Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #TDExpressions
}

{ #category : #'public access' }
EExpression >> negated [
	^ENegation new expression: self
]
