#' ACL submission format (PDF)
#'
#' Template for creating a ACL submission
#'
#' @inheritParams pdf_document
#'
#' @export

acl_paper <- function(keep_tex = TRUE,
                         includes = NULL,
                         submission = TRUE) {

    template <- find_resource("acl_paper_2017", "template.tex")

    base <- rmarkdown::pdf_document(template = template,
                                    keep_tex = keep_tex,
                                    includes = includes,
                                    md_extensions = "+fancy_lists") # you can get rid of this line if you want, I just wanted to use the `fancy_lists` pandoc extension

    # Mostly copied from knitr::render_sweave
    base$knitr$opts_knit$out.format <- "sweave"

    base$knitr$opts_chunk$prompt <- TRUE
    base$knitr$opts_chunk$comment <- NA
    base$knitr$opts_chunk$highlight <- FALSE

    hook_chunk <- function(x, options) {
        if (knitr:::output_asis(x, options)) return(x)
        paste0('\\begin{CodeChunk}\n', x, '\\end{CodeChunk}')
    }
    hook_input <- function(x, options) {
        paste0(c('\\begin{CodeInput}', x, '\\end{CodeInput}', ''),
               collapse = '\n')
    }
    hook_output <- function(x, options) {
        paste0('\\begin{CodeOutput}\n', x, '\\end{CodeOutput}\n')
    }

    knitr::knit_hooks$set(set.cap.width = function(before, options, envir) {
        if (before) {
            if(options$num.cols.cap == 2) {
                return("\\captionsetup{width=0.8\\textwidth}")
            } else {
                return("\\captionsetup{width=0.8\\columnwidth}")
            }
        }
    })

    base$knitr$knit_hooks$chunk   <- hook_chunk
    base$knitr$knit_hooks$source  <- hook_input
    base$knitr$knit_hooks$output  <- hook_output
    base$knitr$knit_hooks$message <- hook_output
    base$knitr$knit_hooks$warning <- hook_output
    base$knitr$knit_hooks$plot <- knitr::hook_plot_tex # this controls the chunk options for tex

    base
}
