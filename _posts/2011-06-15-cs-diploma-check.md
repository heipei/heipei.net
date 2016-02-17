---
id: 873
title: 'CS Diploma: Check!'
date: 2011-06-15T11:36:53+00:00
author: Jojo
layout: post
guid: http://heipei.net/?p=873
permalink: /2011/06/15/cs-diploma-check/
categories:
  - Allgemein
  - Geekstuff
  - Linux
  - Uni
---
<div class="hyphenate">
  <img src="/images/ajax.gif" data-echo="/weblog/talk_thesis.png" alt="Implementation and Evaluation of Efficient Cryptographic Algorithms using CUDA and OpenCL" class="alignleft" />Careful readers should have noticed that I talked about having finished my Computer Science studies recently. Now, there are several steps to the process. First you simply hand in your diploma thesis, meaning that you&#8217;re done working on it. At some point, if you need it, you can get a slip which confirms that you at least passed the thesis, albeit with the lowest possible grade. Then, you will give your final talk to pass the time until your reviewers have finished grading the thesis. Finally, the grade is officially and irreversibly entered into the university&#8217;s computer system, which, in my case, happened yesterday.</p> 
  
  <p>
    <b>Thesis: Implementation and Evaluation of Efficient Cryptographic Algorithms using CUDA and OpenCL</b><br /> The (rather lengthy) topic of my thesis contains this: Cryptography on GPUs. GPUs have become much more powerful than CPUs in terms of FLOPs/s (floating point operations per second), but using these computational resources requires a new programming model and a problem which can in fact be translated to run on a GPU. I simply transformed a few block ciphers (symmetric encryption systems) to run on the GPU, and analyzed common design paradigms and problems along the way. This has been done before by other teams, but what sets my work apart (in my opinion) is the fact that I analyzed multiple ciphers in one work, used two different systems to test my implementations and provided a detailed description of the test setup, something missing from most of the previous work.
  </p>
  
  <p>
    Additionally, I think my thesis makes a comfortable read for anyone interested in GPU programming and cryptography on GPUs. You don&#8217;t need a lot of previous knowledge to understand it, and most of the previous work in GPU cryptography (not just for block ciphers) has been cited in the first chapter.
  </p>
  
  <p>
    <b>Thesis: Implementation</b><br /> <img src="/images/ajax.gif" data-echo="/weblog/engine-cuda.png" alt="engine-cuda" class="alignleft" />To implement the ciphers examined in my thesis, I needed some kind of foundation. First of all, encryption and decryption has to be invoked in some standard way, and different kinds of benchmarks have to be supported as well. After some search, I settled with using <a href="http://code.google.com/p/engine-cuda/">engine-cuda</a>, an engine for the OpenSSL crypto library which uses CUDA to execute the block ciphers. To implement the block ciphers, I used the versions included with OpenSSL to start. Implementing a block cipher using just the original paper which describes it is a really bad idea unless you have extensive experience. I&#8217;ve seen other teams implement text-book versions of AES and fail miserably in the process.
  </p>
  
  <p>
    My changes to engine-cuda will be released at some point in the near future, right now I am still working on it. Rest assured, when it is released you will hear about it here ;)
  </p>
  
  <p>
    <b>Thesis: Acknowledgments </b><br /> <img src="/images/ajax.gif" data-echo="/weblog/itsec.png" alt="IT Security RWTH Aachen" class="alignleft" />My thesis was written at the <a href="http://itsec.rwth-aachen.de/">Chair for IT Security at RWTH Aachen University</a>, which is a young and really small chair. As a result, the communication with my supervisor and the professor was excellent, and I&#8217;d like to thank them both for supporting my topic. While cryptography certainly fits well into a chair for security, GPU-programming is a topic more often attributed to HPC research groups. As usual, Flo proved to be really helpful pointing out spelling mistakes and other errors in my thesis. Last but not least, Paolo Margara, author and maintainer of the engine-cuda project helped me get started with the code and discussed implementation decisions with me during development.
  </p>
  
  <p>
    If you have questions or suggestions about the content of my work, feel free to contact me!
  </p>
</div>
