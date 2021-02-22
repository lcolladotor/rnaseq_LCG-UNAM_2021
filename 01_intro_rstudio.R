## ----proj, eval = FALSE-------------------------------------------------------------------------------------------------------
## usethis::create_project('~/rnaseq_2021_notas')


## ----create_setup, eval = FALSE-----------------------------------------------------------------------------------------------
## ## Start a setup file
## usethis::use_r('01-notas.R')


## ----use_git, eval = FALSE----------------------------------------------------------------------------------------------------
## ## Para poder conectar tu compu con GitHub
## usethis::create_github_token() ## Abrirá una página web, escoje un nombre único
## ## y luego da click en el botón verde al final. Después copia el token
## ## (son 40 caracteres)
## gitcreds::gitcreds_set() ## Ojo, copia el token, no tu password de git!
## ## Si no, terminaras en la situación descrita en
## ## https://github.com/r-lib/usethis/issues/1347
## 
## ## Configura tu usuario de GitHub
## usethis::edit_git_config()
## # [user]
## # 	name = Leonardo Collado Torres
## # 	email = lcolladotor@gmail.com
## 
## ## Para inicializar el repositorio de Git
## usethis::use_git()
## 
## ## Para conectar tu repositorio local de Git con los servidores de GitHub
## usethis::use_github()


## git clone https://github.com/lcolladotor/rnaseq_LCG-UNAM_2021.git

## 
## ## Si tienen su SSH key configurarda pueden usar

## ## Info sobre SSH keys de GitHub:

## ## https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

## git clone git@github.com:lcolladotor/rnaseq_LCG-UNAM_2021.git


## ----clone_repo, eval = FALSE-------------------------------------------------------------------------------------------------
## ## Opción más nueva:
## library("gert")
## repo <- git_clone(
##     "https://github.com/lcolladotor/rnaseq_LCG-UNAM_2021",
##     "~/rnaseq_LCG-UNAM_2021"
## )
## setwd(repo)
## 
## ## Otra opción:
## git2r::clone('https://github.com/lcolladotor/rnaseq_LCG-UNAM_2021',
##     '~/rnaseq_LCG-UNAM_20210')


## ----postcards_proj, eval = FALSE---------------------------------------------------------------------------------------------
## ## Creen el RStudio project
## usethis::create_project('Su_Usuario.github.io')
## 
## ## Configura Git y GitHub
## usethis::use_git()
## usethis::use_github()


## ----postcards_create, eval = FALSE-------------------------------------------------------------------------------------------
## ## Solo uno de estos, de acurdo al templado que más les gustó
## postcards::create_postcard(template = "jolla")
## postcards::create_postcard(template = "jolla-blue")
## postcards::create_postcard(template = "trestles")
## postcards::create_postcard(template = "onofre")

