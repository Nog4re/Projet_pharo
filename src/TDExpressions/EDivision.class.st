Class {
	#name : #EDivision,
	#superclass : #EBinaryExpression,
	#category : #TDExpressions
}

{ #category : #'instance creation' }
EDivision class >> numerator: aConstant denominator: aConstant2 [
	| division |
	
	division := EDivision new.
	division left: aConstant.
	division right: aConstant2.
	
	^ division
]

{ #category : #visiting }
EDivision >> accept: aVisitor [
	^ aVisitor visitDivision: self
]

{ #category : #visiting }
EDivision >> operatorString [
	^ ' / '
]
