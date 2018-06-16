package com.subb.app;

import java.io.IOException;

        import org.apache.hadoop.io.IntWritable;
        import org.apache.hadoop.io.Text;
        import org.apache.hadoop.mapreduce.Reducer;

public class CountReduce
        extends Reducer<Text, IntWritable, Text, IntWritable> {
	private int c = 0;
    @Override
    public void reduce(Text key, Iterable<IntWritable> values,
                       Context context)
            throws IOException, InterruptedException {
		c=c+1;
    }
    @Override	
    public void cleanup(Context context) throws IOException, InterruptedException {

	       context.write(new Text("独立ip总和"), new IntWritable(c));
	}
}
