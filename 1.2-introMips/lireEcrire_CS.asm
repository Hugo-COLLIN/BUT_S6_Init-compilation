.data
str: 	.asciiz "Des caracteres ....\n"
lus:	.space 256
.text
main:

# Ecrire une cha?ne de caract?res
	la $a0, str 	# $a0 <- adresse de la chaîne à écrire
	li $v0, 4 	# $v0 <- code du print
	syscall 	# afficher

# Lire une chaine de caract?res
	la $a0, lus 	# $a0 <- adresse de la la chaîne à écrire
	li $a1, 255 	# $v0 <- nombre de caractères à lire
	li $v0, 8 	# $v0 <- code du read
	syscall 	# lire

# Ecrire un entier
	li $a0 , 2456 	# $a0 <- 2456 (valeur à afficher)
	li $v0 , 1 	# $v0 <- 1 (code du print entier)
	syscall 	# afficher

# Lire un entier
	li $v0 , 5 	# $v0 <- 5 (code du read entier)
	syscall 	# lire ; le résultat est dans $V0

# Fin du programme
 	li $v0, 10
 	syscall # retour au système
