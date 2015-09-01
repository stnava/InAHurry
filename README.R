library( rmarkdown )

stitchedFile <- "stitched.Rmd";

rmdFiles <- c( "format.Rmd", "simple_itk.Rmd" )

for( i in 1:length( rmdFiles ) )
  {
  if( i == 1 )
    {
    cmd <- paste( "cat", rmdFiles[i], ">", stitchedFile )
    } else {
    cmd <- paste( "cat", rmdFiles[i], ">>", stitchedFile )
    }
  system( cmd )
  }
render( stitchedFile, output_format = "all" )

