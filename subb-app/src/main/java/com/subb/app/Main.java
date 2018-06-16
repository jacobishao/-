package com.subb.app;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapred.JobConf;
import org.apache.hadoop.mapred.Mapper;

import java.util.Random;

public class Main {

    public static void main(String[] args) throws Exception {
        if (args.length != 2) {
            System.err.println("Usage:  hadoop com.subb.app.Main <input path> " +
                    "<output path>");
            System.exit(-1);
        }
        Job job = new Job();
        job.setJarByClass(Main.class);
        job.setJobName("ipcount");

        FileInputFormat.addInputPath(job, new Path(args[0]));
        FileOutputFormat.setOutputPath(job, new Path(args[1]));
       	job.setNumReduceTasks(1); 
        job.setMapperClass(CoutMap.class);
        //job.setCombinerClass(CountReduce.class);
        job.setReducerClass(CountReduce.class);

        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(IntWritable.class);
        job.waitForCompletion(true);
        
    

    }
}
