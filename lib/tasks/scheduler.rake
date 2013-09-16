{\rtf1\ansi\ansicpg1252\cocoartf1187\cocoasubrtf390
{\fonttbl\f0\fnil\fcharset0 Georgia;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red255\green255\blue255;\red38\green38\blue38;
}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl400

\f0\fs30 \cf2 \cb3 desc "This task is called by the Heroku cron add-on"\cf4 \
\cf2 task :call_page => :environment do\cf4 \
\cf2 \'a0 \'a0uri = URI.parse('http://www.henryvanwagenberg.com/')\cf4 \
\cf2 \'a0 \'a0Net::HTTP.get(uri)\cf4 \
\cf2 \'a0end\cf4 \
}