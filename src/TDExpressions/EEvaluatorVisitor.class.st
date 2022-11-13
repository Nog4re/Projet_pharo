Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#category : #TDExpressions
}

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [
	^ aConstant value
]
