#!/usr/bin/env Rscript

library(optparse)

option_list <- list (
    make_option(c("-i","--inp"), type='character', help="Input file path", default=NULL ,metavar="character")
);

opt_parser <- OptionParser(option_list=option_list);
opt <- parse_args(opt_parser);

if (is.null(opt$inp)){
      print_help(opt_parser)
  stop("At least one argument must be supplied (input file).n", call.=FALSE)
}

inputfile = opt$inp;

## input param ##
input <- data.frame(t(read.table(inputfile, row.names = 1, sep = "=",
                                comment.char = ";",
                                strip.white = TRUE,
                                stringsAsFactors = FALSE)), stringsAsFactors = FALSE);
input.ed=input;
search.var <- c("a","b","c","d");

x <- seq( -2*pi, 2*pi, length.out = 128);
y <- input$a * sin( input$b * x + input$c) + input$d;

unlink("result");
dir.create("result");

png(filename="result/result.png", type="cairo");
plot(x,y, type="l");
dev.off();
