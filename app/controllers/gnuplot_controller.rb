class GnuplotController < ApplicationController

  require 'gnuplot'

  def gnuplot_open( persist=false )
    cmd = Gnuplot.gnuplot( persist ) or raise 'gnuplot not found'
    mypp = IO::popen( cmd, "r+")
    mypp
  end 

  def svg
    @buf = ""
    gp = gnuplot_open

    Gnuplot::Plot.new( gp ) do |plot|
      plot.xrange "[-10:10]"
      plot.title  "Sin Wave Example"
      plot.ylabel "x"
      plot.xlabel "sin(x)"
      plot.terminal "svg size 800,600"
      plot.data << Gnuplot::DataSet.new( "sin(x)" ) do |ds|
        ds.with = "lines"
        ds.linewidth = 4
      end
    end
    gp.flush
    gp.close_write
    gp.read(nil,@buf)
    gp.close_read
    render :content_type => 'image/svg+xml' 
  end

  def chart
  end

end
