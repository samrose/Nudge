# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nudge}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bill Tozier", "Trek Glowacki"]
  s.date = %q{2010-02-01}
  s.default_executable = %q{nudge}
  s.description = %q{The nudge gem will (but does not yet) provide a simple framework for building, running and managing genetic programming experiments which automatically discover algorithms and equations to solve well-defined target problems. It depends on CouchDB and Ruby 1.9+}
  s.email = %q{bill@vagueinnovation.com}
  s.executables = ["nudge"]
  s.extra_rdoc_files = [
    "LICENSE.txt"
  ]
  s.files = [
    ".gitignore",
     "LICENSE.txt",
     "Rakefile",
     "VERSION",
     "_spikes/couch_document_spike.rb",
     "_spikes/nested_parsing/nested.rb",
     "_spikes/nested_parsing/nested.treetop",
     "_spikes/nudge3_syntax_spike.txt",
     "_spikes/nudgeview/init.rb",
     "_spikes/nudgeview/public/javascripts/app.js",
     "_spikes/nudgeview/public/javascripts/jquery.js",
     "_spikes/nudgeview/public/javascripts/jquery.svg.js",
     "_spikes/nudgeview/views/index.erb",
     "_spikes/nudgeview/views/index.haml",
     "_spikes/preprocessing.rb",
     "_spikes/simplestWeb/simplest.rb",
     "_spikes/simplestWeb/views/main.erb",
     "_spikes/sketches/nudgecode_spike.rb",
     "_spikes/sketches/parser2.1_object_model.txt",
     "_spikes/sketches/searchDSL_spike.rb",
     "_spikes/sketches/search_operator_sketch_spike.txt",
     "_spikes/sketches/searchspace_spike.rb",
     "_spikes/symbolic_regression/activate.rb",
     "_spikes/symbolic_regression/config/environment.rb",
     "_spikes/symbolic_regression/config/environments/deployment.rb",
     "_spikes/symbolic_regression/config/environments/development.rb",
     "_spikes/symbolic_regression/experiment/objectives/programLength.rb",
     "_spikes/symbolic_regression/experiment/objectives/summedSquaredError.rb",
     "_spikes/symbolic_regression/lib/tasks/run.rake",
     "app_generators/nudge/USAGE",
     "app_generators/nudge/nudge_generator.rb",
     "app_generators/nudge/templates/activate.rb",
     "bin/nudge",
     "doc/classes/BlockNode.html",
     "doc/classes/BlockNode.src/M000246.html",
     "doc/classes/BoolAndInstruction.html",
     "doc/classes/BoolAndInstruction.src/M000003.html",
     "doc/classes/BoolAndInstruction.src/M000004.html",
     "doc/classes/BoolAndInstruction.src/M000005.html",
     "doc/classes/BoolAndInstruction.src/M000006.html",
     "doc/classes/BoolEqualQInstruction.html",
     "doc/classes/BoolEqualQInstruction.src/M000015.html",
     "doc/classes/BoolEqualQInstruction.src/M000016.html",
     "doc/classes/BoolEqualQInstruction.src/M000017.html",
     "doc/classes/BoolEqualQInstruction.src/M000018.html",
     "doc/classes/BoolFromFloatInstruction.html",
     "doc/classes/BoolFromFloatInstruction.src/M000071.html",
     "doc/classes/BoolFromFloatInstruction.src/M000072.html",
     "doc/classes/BoolFromFloatInstruction.src/M000073.html",
     "doc/classes/BoolFromFloatInstruction.src/M000074.html",
     "doc/classes/BoolFromIntInstruction.html",
     "doc/classes/BoolFromIntInstruction.src/M000067.html",
     "doc/classes/BoolFromIntInstruction.src/M000068.html",
     "doc/classes/BoolFromIntInstruction.src/M000069.html",
     "doc/classes/BoolFromIntInstruction.src/M000070.html",
     "doc/classes/BoolNotInstruction.html",
     "doc/classes/BoolNotInstruction.src/M000019.html",
     "doc/classes/BoolNotInstruction.src/M000020.html",
     "doc/classes/BoolNotInstruction.src/M000021.html",
     "doc/classes/BoolNotInstruction.src/M000022.html",
     "doc/classes/BoolOrInstruction.html",
     "doc/classes/BoolOrInstruction.src/M000007.html",
     "doc/classes/BoolOrInstruction.src/M000008.html",
     "doc/classes/BoolOrInstruction.src/M000009.html",
     "doc/classes/BoolOrInstruction.src/M000010.html",
     "doc/classes/BoolRandomInstruction.html",
     "doc/classes/BoolRandomInstruction.src/M000187.html",
     "doc/classes/BoolRandomInstruction.src/M000188.html",
     "doc/classes/BoolRandomInstruction.src/M000189.html",
     "doc/classes/BoolRandomInstruction.src/M000190.html",
     "doc/classes/BoolType.html",
     "doc/classes/BoolType.src/M000240.html",
     "doc/classes/BoolType.src/M000241.html",
     "doc/classes/BoolType.src/M000242.html",
     "doc/classes/BoolXorInstruction.html",
     "doc/classes/BoolXorInstruction.src/M000011.html",
     "doc/classes/BoolXorInstruction.src/M000012.html",
     "doc/classes/BoolXorInstruction.src/M000013.html",
     "doc/classes/BoolXorInstruction.src/M000014.html",
     "doc/classes/ChannelNode.html",
     "doc/classes/ChannelNode.src/M000249.html",
     "doc/classes/ChannelNode.src/M000250.html",
     "doc/classes/CodeType.html",
     "doc/classes/CodeType.src/M000219.html",
     "doc/classes/CodeType.src/M000220.html",
     "doc/classes/CodeType.src/M000221.html",
     "doc/classes/CodeType.src/M000222.html",
     "doc/classes/CodeType.src/M000223.html",
     "doc/classes/CodeType.src/M000224.html",
     "doc/classes/ERCNode.html",
     "doc/classes/ERCNode.src/M000254.html",
     "doc/classes/ERCNode.src/M000255.html",
     "doc/classes/ERCNode.src/M000256.html",
     "doc/classes/ExecPopInstruction.html",
     "doc/classes/ExecPopInstruction.src/M000075.html",
     "doc/classes/ExecPopInstruction.src/M000076.html",
     "doc/classes/ExecPopInstruction.src/M000077.html",
     "doc/classes/ExecPopInstruction.src/M000078.html",
     "doc/classes/FloatAbsInstruction.html",
     "doc/classes/FloatAbsInstruction.src/M000107.html",
     "doc/classes/FloatAbsInstruction.src/M000108.html",
     "doc/classes/FloatAbsInstruction.src/M000109.html",
     "doc/classes/FloatAbsInstruction.src/M000110.html",
     "doc/classes/FloatAddInstruction.html",
     "doc/classes/FloatAddInstruction.src/M000079.html",
     "doc/classes/FloatAddInstruction.src/M000080.html",
     "doc/classes/FloatAddInstruction.src/M000081.html",
     "doc/classes/FloatAddInstruction.src/M000082.html",
     "doc/classes/FloatCosineInstruction.html",
     "doc/classes/FloatCosineInstruction.src/M000123.html",
     "doc/classes/FloatCosineInstruction.src/M000124.html",
     "doc/classes/FloatCosineInstruction.src/M000125.html",
     "doc/classes/FloatCosineInstruction.src/M000126.html",
     "doc/classes/FloatDivideInstruction.html",
     "doc/classes/FloatDivideInstruction.src/M000091.html",
     "doc/classes/FloatDivideInstruction.src/M000092.html",
     "doc/classes/FloatDivideInstruction.src/M000093.html",
     "doc/classes/FloatDivideInstruction.src/M000094.html",
     "doc/classes/FloatFromBoolInstruction.html",
     "doc/classes/FloatFromBoolInstruction.src/M000055.html",
     "doc/classes/FloatFromBoolInstruction.src/M000056.html",
     "doc/classes/FloatFromBoolInstruction.src/M000057.html",
     "doc/classes/FloatFromBoolInstruction.src/M000058.html",
     "doc/classes/FloatFromIntInstruction.html",
     "doc/classes/FloatFromIntInstruction.src/M000063.html",
     "doc/classes/FloatFromIntInstruction.src/M000064.html",
     "doc/classes/FloatFromIntInstruction.src/M000065.html",
     "doc/classes/FloatFromIntInstruction.src/M000066.html",
     "doc/classes/FloatGreaterThanQInstruction.html",
     "doc/classes/FloatGreaterThanQInstruction.src/M000035.html",
     "doc/classes/FloatGreaterThanQInstruction.src/M000036.html",
     "doc/classes/FloatGreaterThanQInstruction.src/M000037.html",
     "doc/classes/FloatGreaterThanQInstruction.src/M000038.html",
     "doc/classes/FloatIfInstruction.html",
     "doc/classes/FloatIfInstruction.src/M000047.html",
     "doc/classes/FloatIfInstruction.src/M000048.html",
     "doc/classes/FloatIfInstruction.src/M000049.html",
     "doc/classes/FloatIfInstruction.src/M000050.html",
     "doc/classes/FloatLessThanQInstruction.html",
     "doc/classes/FloatLessThanQInstruction.src/M000039.html",
     "doc/classes/FloatLessThanQInstruction.src/M000040.html",
     "doc/classes/FloatLessThanQInstruction.src/M000041.html",
     "doc/classes/FloatLessThanQInstruction.src/M000042.html",
     "doc/classes/FloatMaxInstruction.html",
     "doc/classes/FloatMaxInstruction.src/M000095.html",
     "doc/classes/FloatMaxInstruction.src/M000096.html",
     "doc/classes/FloatMaxInstruction.src/M000097.html",
     "doc/classes/FloatMaxInstruction.src/M000098.html",
     "doc/classes/FloatMinInstruction.html",
     "doc/classes/FloatMinInstruction.src/M000099.html",
     "doc/classes/FloatMinInstruction.src/M000100.html",
     "doc/classes/FloatMinInstruction.src/M000101.html",
     "doc/classes/FloatMinInstruction.src/M000102.html",
     "doc/classes/FloatMultiplyInstruction.html",
     "doc/classes/FloatMultiplyInstruction.src/M000083.html",
     "doc/classes/FloatMultiplyInstruction.src/M000084.html",
     "doc/classes/FloatMultiplyInstruction.src/M000085.html",
     "doc/classes/FloatMultiplyInstruction.src/M000086.html",
     "doc/classes/FloatNegativeInstruction.html",
     "doc/classes/FloatNegativeInstruction.src/M000103.html",
     "doc/classes/FloatNegativeInstruction.src/M000104.html",
     "doc/classes/FloatNegativeInstruction.src/M000105.html",
     "doc/classes/FloatNegativeInstruction.src/M000106.html",
     "doc/classes/FloatPowerInstruction.html",
     "doc/classes/FloatPowerInstruction.src/M000111.html",
     "doc/classes/FloatPowerInstruction.src/M000112.html",
     "doc/classes/FloatPowerInstruction.src/M000113.html",
     "doc/classes/FloatPowerInstruction.src/M000114.html",
     "doc/classes/FloatRandomInstruction.html",
     "doc/classes/FloatRandomInstruction.src/M000191.html",
     "doc/classes/FloatRandomInstruction.src/M000192.html",
     "doc/classes/FloatRandomInstruction.src/M000193.html",
     "doc/classes/FloatRandomInstruction.src/M000194.html",
     "doc/classes/FloatSineInstruction.html",
     "doc/classes/FloatSineInstruction.src/M000119.html",
     "doc/classes/FloatSineInstruction.src/M000120.html",
     "doc/classes/FloatSineInstruction.src/M000121.html",
     "doc/classes/FloatSineInstruction.src/M000122.html",
     "doc/classes/FloatSqrtInstruction.html",
     "doc/classes/FloatSqrtInstruction.src/M000115.html",
     "doc/classes/FloatSqrtInstruction.src/M000116.html",
     "doc/classes/FloatSqrtInstruction.src/M000117.html",
     "doc/classes/FloatSqrtInstruction.src/M000118.html",
     "doc/classes/FloatSubtractInstruction.html",
     "doc/classes/FloatSubtractInstruction.src/M000087.html",
     "doc/classes/FloatSubtractInstruction.src/M000088.html",
     "doc/classes/FloatSubtractInstruction.src/M000089.html",
     "doc/classes/FloatSubtractInstruction.src/M000090.html",
     "doc/classes/FloatTangentInstruction.html",
     "doc/classes/FloatTangentInstruction.src/M000127.html",
     "doc/classes/FloatTangentInstruction.src/M000128.html",
     "doc/classes/FloatTangentInstruction.src/M000129.html",
     "doc/classes/FloatTangentInstruction.src/M000130.html",
     "doc/classes/FloatType.html",
     "doc/classes/FloatType.src/M000243.html",
     "doc/classes/FloatType.src/M000244.html",
     "doc/classes/FloatType.src/M000245.html",
     "doc/classes/Helpers.html",
     "doc/classes/Helpers.src/M000343.html",
     "doc/classes/Helpers.src/M000344.html",
     "doc/classes/Instruction.html",
     "doc/classes/Instruction.src/M000131.html",
     "doc/classes/Instruction.src/M000132.html",
     "doc/classes/Instruction.src/M000133.html",
     "doc/classes/Instruction.src/M000134.html",
     "doc/classes/Instruction.src/M000135.html",
     "doc/classes/Instruction.src/M000136.html",
     "doc/classes/Instruction.src/M000137.html",
     "doc/classes/Instruction.src/M000138.html",
     "doc/classes/Instruction.src/M000139.html",
     "doc/classes/Instruction.src/M000140.html",
     "doc/classes/Instruction.src/M000141.html",
     "doc/classes/Instruction.src/M000142.html",
     "doc/classes/Instruction.src/M000143.html",
     "doc/classes/Instruction.src/M000144.html",
     "doc/classes/Instruction.src/M000145.html",
     "doc/classes/Instruction.src/M000146.html",
     "doc/classes/Instruction/InstructionMethodError.html",
     "doc/classes/Instruction/NaNResultError.html",
     "doc/classes/Instruction/NotEnoughStackItems.html",
     "doc/classes/InstructionNode.html",
     "doc/classes/InstructionNode.src/M000247.html",
     "doc/classes/InstructionNode.src/M000248.html",
     "doc/classes/IntAbsInstruction.html",
     "doc/classes/IntAbsInstruction.src/M000175.html",
     "doc/classes/IntAbsInstruction.src/M000176.html",
     "doc/classes/IntAbsInstruction.src/M000177.html",
     "doc/classes/IntAbsInstruction.src/M000178.html",
     "doc/classes/IntAddInstruction.html",
     "doc/classes/IntAddInstruction.src/M000147.html",
     "doc/classes/IntAddInstruction.src/M000148.html",
     "doc/classes/IntAddInstruction.src/M000149.html",
     "doc/classes/IntAddInstruction.src/M000150.html",
     "doc/classes/IntDepthInstruction.html",
     "doc/classes/IntDepthInstruction.src/M000211.html",
     "doc/classes/IntDepthInstruction.src/M000212.html",
     "doc/classes/IntDepthInstruction.src/M000213.html",
     "doc/classes/IntDepthInstruction.src/M000214.html",
     "doc/classes/IntDivideInstruction.html",
     "doc/classes/IntDivideInstruction.src/M000155.html",
     "doc/classes/IntDivideInstruction.src/M000156.html",
     "doc/classes/IntDivideInstruction.src/M000157.html",
     "doc/classes/IntDivideInstruction.src/M000158.html",
     "doc/classes/IntDuplicateInstruction.html",
     "doc/classes/IntDuplicateInstruction.src/M000203.html",
     "doc/classes/IntDuplicateInstruction.src/M000204.html",
     "doc/classes/IntDuplicateInstruction.src/M000205.html",
     "doc/classes/IntDuplicateInstruction.src/M000206.html",
     "doc/classes/IntEqualQInstruction.html",
     "doc/classes/IntEqualQInstruction.src/M000023.html",
     "doc/classes/IntEqualQInstruction.src/M000024.html",
     "doc/classes/IntEqualQInstruction.src/M000025.html",
     "doc/classes/IntEqualQInstruction.src/M000026.html",
     "doc/classes/IntFlushInstruction.html",
     "doc/classes/IntFlushInstruction.src/M000215.html",
     "doc/classes/IntFlushInstruction.src/M000216.html",
     "doc/classes/IntFlushInstruction.src/M000217.html",
     "doc/classes/IntFlushInstruction.src/M000218.html",
     "doc/classes/IntFromBoolInstruction.html",
     "doc/classes/IntFromBoolInstruction.src/M000051.html",
     "doc/classes/IntFromBoolInstruction.src/M000052.html",
     "doc/classes/IntFromBoolInstruction.src/M000053.html",
     "doc/classes/IntFromBoolInstruction.src/M000054.html",
     "doc/classes/IntFromFloatInstruction.html",
     "doc/classes/IntFromFloatInstruction.src/M000059.html",
     "doc/classes/IntFromFloatInstruction.src/M000060.html",
     "doc/classes/IntFromFloatInstruction.src/M000061.html",
     "doc/classes/IntFromFloatInstruction.src/M000062.html",
     "doc/classes/IntGreaterThanQInstruction.html",
     "doc/classes/IntGreaterThanQInstruction.src/M000031.html",
     "doc/classes/IntGreaterThanQInstruction.src/M000032.html",
     "doc/classes/IntGreaterThanQInstruction.src/M000033.html",
     "doc/classes/IntGreaterThanQInstruction.src/M000034.html",
     "doc/classes/IntIfInstruction.html",
     "doc/classes/IntIfInstruction.src/M000043.html",
     "doc/classes/IntIfInstruction.src/M000044.html",
     "doc/classes/IntIfInstruction.src/M000045.html",
     "doc/classes/IntIfInstruction.src/M000046.html",
     "doc/classes/IntLessThanQInstruction.html",
     "doc/classes/IntLessThanQInstruction.src/M000027.html",
     "doc/classes/IntLessThanQInstruction.src/M000028.html",
     "doc/classes/IntLessThanQInstruction.src/M000029.html",
     "doc/classes/IntLessThanQInstruction.src/M000030.html",
     "doc/classes/IntMaxInstruction.html",
     "doc/classes/IntMaxInstruction.src/M000167.html",
     "doc/classes/IntMaxInstruction.src/M000168.html",
     "doc/classes/IntMaxInstruction.src/M000169.html",
     "doc/classes/IntMaxInstruction.src/M000170.html",
     "doc/classes/IntMinInstruction.html",
     "doc/classes/IntMinInstruction.src/M000171.html",
     "doc/classes/IntMinInstruction.src/M000172.html",
     "doc/classes/IntMinInstruction.src/M000173.html",
     "doc/classes/IntMinInstruction.src/M000174.html",
     "doc/classes/IntModuloInstruction.html",
     "doc/classes/IntModuloInstruction.src/M000163.html",
     "doc/classes/IntModuloInstruction.src/M000164.html",
     "doc/classes/IntModuloInstruction.src/M000165.html",
     "doc/classes/IntModuloInstruction.src/M000166.html",
     "doc/classes/IntMultiplyInstruction.html",
     "doc/classes/IntMultiplyInstruction.src/M000151.html",
     "doc/classes/IntMultiplyInstruction.src/M000152.html",
     "doc/classes/IntMultiplyInstruction.src/M000153.html",
     "doc/classes/IntMultiplyInstruction.src/M000154.html",
     "doc/classes/IntNegativeInstruction.html",
     "doc/classes/IntNegativeInstruction.src/M000179.html",
     "doc/classes/IntNegativeInstruction.src/M000180.html",
     "doc/classes/IntNegativeInstruction.src/M000181.html",
     "doc/classes/IntNegativeInstruction.src/M000182.html",
     "doc/classes/IntPopInstruction.html",
     "doc/classes/IntPopInstruction.src/M000195.html",
     "doc/classes/IntPopInstruction.src/M000196.html",
     "doc/classes/IntPopInstruction.src/M000197.html",
     "doc/classes/IntPopInstruction.src/M000198.html",
     "doc/classes/IntRandomInstruction.html",
     "doc/classes/IntRandomInstruction.src/M000183.html",
     "doc/classes/IntRandomInstruction.src/M000184.html",
     "doc/classes/IntRandomInstruction.src/M000185.html",
     "doc/classes/IntRandomInstruction.src/M000186.html",
     "doc/classes/IntRotateInstruction.html",
     "doc/classes/IntRotateInstruction.src/M000207.html",
     "doc/classes/IntRotateInstruction.src/M000208.html",
     "doc/classes/IntRotateInstruction.src/M000209.html",
     "doc/classes/IntRotateInstruction.src/M000210.html",
     "doc/classes/IntSubtractInstruction.html",
     "doc/classes/IntSubtractInstruction.src/M000159.html",
     "doc/classes/IntSubtractInstruction.src/M000160.html",
     "doc/classes/IntSubtractInstruction.src/M000161.html",
     "doc/classes/IntSubtractInstruction.src/M000162.html",
     "doc/classes/IntSwapInstruction.html",
     "doc/classes/IntSwapInstruction.src/M000199.html",
     "doc/classes/IntSwapInstruction.src/M000200.html",
     "doc/classes/IntSwapInstruction.src/M000201.html",
     "doc/classes/IntSwapInstruction.src/M000202.html",
     "doc/classes/IntType.html",
     "doc/classes/IntType.src/M000235.html",
     "doc/classes/IntType.src/M000236.html",
     "doc/classes/IntType.src/M000237.html",
     "doc/classes/IntType.src/M000238.html",
     "doc/classes/IntType.src/M000239.html",
     "doc/classes/LiteralNode.html",
     "doc/classes/LiteralNode.src/M000251.html",
     "doc/classes/LiteralNode.src/M000252.html",
     "doc/classes/LiteralNode.src/M000253.html",
     "doc/classes/Nudge.html",
     "doc/classes/Nudge/Channel.html",
     "doc/classes/Nudge/Channel.src/M000286.html",
     "doc/classes/Nudge/Channel.src/M000287.html",
     "doc/classes/Nudge/Channel.src/M000288.html",
     "doc/classes/Nudge/Channel.src/M000289.html",
     "doc/classes/Nudge/Channel.src/M000290.html",
     "doc/classes/Nudge/Channel.src/M000291.html",
     "doc/classes/Nudge/Channel.src/M000292.html",
     "doc/classes/Nudge/Channel.src/M000293.html",
     "doc/classes/Nudge/Channel.src/M000294.html",
     "doc/classes/Nudge/Channel.src/M000295.html",
     "doc/classes/Nudge/Channel.src/M000296.html",
     "doc/classes/Nudge/Channel.src/M000297.html",
     "doc/classes/Nudge/Channel.src/M000298.html",
     "doc/classes/Nudge/CodeBlock.html",
     "doc/classes/Nudge/CodeBlock.src/M000263.html",
     "doc/classes/Nudge/CodeBlock.src/M000264.html",
     "doc/classes/Nudge/CodeBlock.src/M000265.html",
     "doc/classes/Nudge/CodeBlock.src/M000266.html",
     "doc/classes/Nudge/CodeBlock.src/M000267.html",
     "doc/classes/Nudge/CodeBlock.src/M000268.html",
     "doc/classes/Nudge/CodeBlock.src/M000269.html",
     "doc/classes/Nudge/CodeBlock.src/M000270.html",
     "doc/classes/Nudge/CodeBlock.src/M000271.html",
     "doc/classes/Nudge/DeadLocation.html",
     "doc/classes/Nudge/DeadLocation.src/M000334.html",
     "doc/classes/Nudge/Erc.html",
     "doc/classes/Nudge/Erc.src/M000278.html",
     "doc/classes/Nudge/Erc.src/M000279.html",
     "doc/classes/Nudge/Erc.src/M000280.html",
     "doc/classes/Nudge/Erc.src/M000281.html",
     "doc/classes/Nudge/Erc.src/M000282.html",
     "doc/classes/Nudge/Erc.src/M000283.html",
     "doc/classes/Nudge/Erc.src/M000284.html",
     "doc/classes/Nudge/Erc.src/M000285.html",
     "doc/classes/Nudge/Individual.html",
     "doc/classes/Nudge/Individual.src/M000314.html",
     "doc/classes/Nudge/Individual.src/M000315.html",
     "doc/classes/Nudge/Individual.src/M000316.html",
     "doc/classes/Nudge/Individual.src/M000317.html",
     "doc/classes/Nudge/Individual.src/M000318.html",
     "doc/classes/Nudge/InstructionPoint.html",
     "doc/classes/Nudge/InstructionPoint.src/M000299.html",
     "doc/classes/Nudge/InstructionPoint.src/M000300.html",
     "doc/classes/Nudge/InstructionPoint.src/M000301.html",
     "doc/classes/Nudge/InstructionPoint.src/M000302.html",
     "doc/classes/Nudge/InstructionPoint.src/M000303.html",
     "doc/classes/Nudge/InstructionPoint.src/M000304.html",
     "doc/classes/Nudge/InstructionPoint.src/M000305.html",
     "doc/classes/Nudge/InstructionPoint.src/M000306.html",
     "doc/classes/Nudge/InstructionPoint/InstructionNotFoundError.html",
     "doc/classes/Nudge/Interpreter.html",
     "doc/classes/Nudge/Interpreter.src/M000257.html",
     "doc/classes/Nudge/Interpreter.src/M000258.html",
     "doc/classes/Nudge/Interpreter.src/M000259.html",
     "doc/classes/Nudge/Interpreter.src/M000260.html",
     "doc/classes/Nudge/Interpreter.src/M000261.html",
     "doc/classes/Nudge/LiteralPoint.html",
     "doc/classes/Nudge/LiteralPoint.src/M000272.html",
     "doc/classes/Nudge/LiteralPoint.src/M000273.html",
     "doc/classes/Nudge/LiteralPoint.src/M000274.html",
     "doc/classes/Nudge/LiteralPoint.src/M000275.html",
     "doc/classes/Nudge/LiteralPoint.src/M000276.html",
     "doc/classes/Nudge/LiteralPoint.src/M000277.html",
     "doc/classes/Nudge/Location.html",
     "doc/classes/Nudge/Location.src/M000319.html",
     "doc/classes/Nudge/Location.src/M000320.html",
     "doc/classes/Nudge/Location.src/M000321.html",
     "doc/classes/Nudge/Location.src/M000322.html",
     "doc/classes/Nudge/Location.src/M000323.html",
     "doc/classes/Nudge/Location.src/M000324.html",
     "doc/classes/Nudge/Location.src/M000325.html",
     "doc/classes/Nudge/Location.src/M000326.html",
     "doc/classes/Nudge/Location.src/M000327.html",
     "doc/classes/Nudge/Location.src/M000328.html",
     "doc/classes/Nudge/Location.src/M000329.html",
     "doc/classes/Nudge/Location.src/M000330.html",
     "doc/classes/Nudge/Location.src/M000331.html",
     "doc/classes/Nudge/Location.src/M000332.html",
     "doc/classes/Nudge/Location.src/M000333.html",
     "doc/classes/Nudge/NondominatedSubset.html",
     "doc/classes/Nudge/NondominatedSubset.src/M000005.html",
     "doc/classes/Nudge/NondominatedSubset.src/M000006.html",
     "doc/classes/Nudge/NondominatedSubset.src/M000007.html",
     "doc/classes/Nudge/NondominatedSubset.src/M000339.html",
     "doc/classes/Nudge/NondominatedSubset.src/M000340.html",
     "doc/classes/Nudge/NondominatedSubset.src/M000341.html",
     "doc/classes/Nudge/PopulationResample.html",
     "doc/classes/Nudge/PopulationResample.src/M000003.html",
     "doc/classes/Nudge/PopulationResample.src/M000337.html",
     "doc/classes/Nudge/ProgramPoint.html",
     "doc/classes/Nudge/ProgramPoint.src/M000262.html",
     "doc/classes/Nudge/RandomGuess.html",
     "doc/classes/Nudge/RandomGuess.src/M000002.html",
     "doc/classes/Nudge/RandomGuess.src/M000336.html",
     "doc/classes/Nudge/ResampleValues.html",
     "doc/classes/Nudge/ResampleValues.src/M000004.html",
     "doc/classes/Nudge/ResampleValues.src/M000338.html",
     "doc/classes/Nudge/SearchOperator.html",
     "doc/classes/Nudge/SearchOperator.src/M000001.html",
     "doc/classes/Nudge/SearchOperator.src/M000335.html",
     "doc/classes/Nudge/Stack.html",
     "doc/classes/Nudge/Stack.src/M000307.html",
     "doc/classes/Nudge/Stack.src/M000308.html",
     "doc/classes/Nudge/Stack.src/M000309.html",
     "doc/classes/Nudge/Stack.src/M000310.html",
     "doc/classes/Nudge/Stack.src/M000311.html",
     "doc/classes/Nudge/Stack.src/M000312.html",
     "doc/classes/Nudge/Stack.src/M000313.html",
     "doc/classes/Nudge/UniformBackboneCrossover.html",
     "doc/classes/Nudge/UniformBackboneCrossover.src/M000008.html",
     "doc/classes/Nudge/UniformBackboneCrossover.src/M000342.html",
     "doc/classes/NudgeType.html",
     "doc/classes/NudgeType.src/M000225.html",
     "doc/classes/NudgeType.src/M000226.html",
     "doc/classes/NudgeType.src/M000227.html",
     "doc/classes/NudgeType.src/M000228.html",
     "doc/classes/NudgeType.src/M000229.html",
     "doc/classes/NudgeType.src/M000230.html",
     "doc/classes/NudgeType.src/M000231.html",
     "doc/classes/NudgeType.src/M000232.html",
     "doc/classes/NudgeType.src/M000233.html",
     "doc/classes/NudgeType.src/M000234.html",
     "doc/created.rid",
     "doc/files/lib/instructions/bool_basics_rb.html",
     "doc/files/lib/instructions/comparisons_rb.html",
     "doc/files/lib/instructions/conditionals_rb.html",
     "doc/files/lib/instructions/conversions_rb.html",
     "doc/files/lib/instructions/exec_rb.html",
     "doc/files/lib/instructions/float_arithmetic_rb.html",
     "doc/files/lib/instructions/float_transcendental_rb.html",
     "doc/files/lib/instructions/infrastructure_rb.html",
     "doc/files/lib/instructions/int_arithmetic_rb.html",
     "doc/files/lib/instructions/random_value_rb.html",
     "doc/files/lib/instructions/stack_manipulation_rb.html",
     "doc/files/lib/interpreter/grammars/nudge_language_helpers_rb.html",
     "doc/files/lib/interpreter/grammars/nudge_language_treetop.html",
     "doc/files/lib/interpreter/interpreter_rb.html",
     "doc/files/lib/interpreter/programPoints_rb.html",
     "doc/files/lib/interpreter/stack_rb.html",
     "doc/files/lib/interpreter/types/codeType_rb.html",
     "doc/files/lib/interpreter/types/codeType_rb.src/M000001.html",
     "doc/files/lib/interpreter/types/codeType_rb.src/M000002.html",
     "doc/files/lib/interpreter/types/pushTypes_rb.html",
     "doc/files/lib/nudge_rb.html",
     "doc/files/lib/search/evaluators/structural_complexity_rb.html",
     "doc/files/lib/search/helpers_rb.html",
     "doc/files/lib/search/individual/individual_rb.html",
     "doc/files/lib/search/locations/location_rb.html",
     "doc/files/lib/search/operators/basic_operators_rb.html",
     "doc/fr_class_index.html",
     "doc/fr_file_index.html",
     "doc/fr_method_index.html",
     "doc/index.html",
     "doc/rdoc-style.css",
     "features/parser_recognizes_footnotes.feature",
     "features/parser_recognizes_nudge_language.feature",
     "lib/instructions/bool_basics.rb",
     "lib/instructions/code_basics.rb",
     "lib/instructions/comparisons.rb",
     "lib/instructions/conditionals.rb",
     "lib/instructions/conversions.rb",
     "lib/instructions/exec.rb",
     "lib/instructions/float_arithmetic.rb",
     "lib/instructions/float_transcendental.rb",
     "lib/instructions/infrastructure.rb",
     "lib/instructions/int_arithmetic.rb",
     "lib/instructions/name_basics.rb",
     "lib/instructions/name_bindings.rb",
     "lib/instructions/random_value.rb",
     "lib/instructions/stack_manipulation.rb",
     "lib/interpreter/grammars/nudge_codeblock.treetop",
     "lib/interpreter/grammars/nudge_codeblock_helpers.rb",
     "lib/interpreter/grammars/nudge_common.treetop",
     "lib/interpreter/grammars/nudge_instruction.treetop",
     "lib/interpreter/grammars/nudge_instruction_helpers.rb",
     "lib/interpreter/grammars/nudge_language.treetop",
     "lib/interpreter/grammars/nudge_language_helpers.rb",
     "lib/interpreter/grammars/nudge_reference.treetop",
     "lib/interpreter/grammars/nudge_reference_helpers.rb",
     "lib/interpreter/grammars/nudge_value.treetop",
     "lib/interpreter/grammars/nudge_value_helpers.rb",
     "lib/interpreter/interpreter.rb",
     "lib/interpreter/programPoints.rb",
     "lib/interpreter/stack.rb",
     "lib/interpreter/types/codeType.rb",
     "lib/interpreter/types/pushTypes.rb",
     "lib/nudge.rb",
     "lib/search/experiments/experiment.rb",
     "lib/search/helpers.rb",
     "lib/search/individual/batch.rb",
     "lib/search/individual/individual.rb",
     "lib/search/operators/basic_operators.rb",
     "lib/search/operators/evaluators.rb",
     "lib/search/operators/samplers_and_selectors.rb",
     "lib/search/stations/station.rb",
     "nudge.gemspec",
     "push_language_coverage.md",
     "readme.md",
     "script/console",
     "script/destroy",
     "script/generate",
     "spec/data/couchdb_spec.rb",
     "spec/fixtures/just_block.example",
     "spec/fixtures/just_block_with_newline.example",
     "spec/fixtures/long_arithmetic.example",
     "spec/fixtures/one_line_instr.example",
     "spec/fixtures/untidy1.example",
     "spec/fixtures/untidy1fixed.example",
     "spec/instructions/bool_basics_spec.rb",
     "spec/instructions/bool_stack_spec.rb",
     "spec/instructions/code_basics_spec.rb",
     "spec/instructions/code_stack_spec.rb",
     "spec/instructions/comparisons_spec.rb",
     "spec/instructions/conditionals_spec.rb",
     "spec/instructions/conversions_spec.rb",
     "spec/instructions/exec_spec.rb",
     "spec/instructions/float_calculations_spec.rb",
     "spec/instructions/float_stack_spec.rb",
     "spec/instructions/float_transcendental_spec.rb",
     "spec/instructions/instruction_class_spec.rb",
     "spec/instructions/int_calculations_spec.rb",
     "spec/instructions/int_stack_spec.rb",
     "spec/instructions/name_basics_spec.rb",
     "spec/instructions/name_bindings_spec.rb",
     "spec/instructions/name_stack_spec.rb",
     "spec/instructions/random_values_spec.rb",
     "spec/integration/search_integration.rb",
     "spec/interpreter/channel_spec.rb",
     "spec/interpreter/codeblock_spec.rb",
     "spec/interpreter/codetype_spec.rb",
     "spec/interpreter/erc_spec.rb",
     "spec/interpreter/instruction_spec.rb",
     "spec/interpreter/interpreter_spec.rb",
     "spec/interpreter/literal_spec.rb",
     "spec/interpreter/parser_spec.rb",
     "spec/interpreter/stack_spec.rb",
     "spec/interpreter/treetophelpers.rb",
     "spec/interpreter/types_spec.rb",
     "spec/parsers/codeblock_parser_spec.rb",
     "spec/parsers/common_parser_spec.rb",
     "spec/parsers/instruction_parser_spec.rb",
     "spec/parsers/nudge_parser_spec.rb",
     "spec/parsers/reference_parser_spec.rb",
     "spec/parsers/value_parser_spec.rb",
     "spec/search/batch_spec.rb",
     "spec/search/experiments/experiment_spec.rb",
     "spec/search/helpers_spec.rb",
     "spec/search/individual_spec.rb",
     "spec/search/operators/any_one_sampler_spec.rb",
     "spec/search/operators/dominated_quantile_spec.rb",
     "spec/search/operators/duplicate_genomes_spec.rb",
     "spec/search/operators/evaluators/program_point_evaluator_spec.rb",
     "spec/search/operators/evaluators/test_case_evaluator_spec.rb",
     "spec/search/operators/infrastructure_spec.rb",
     "spec/search/operators/most_dominated_subset_spec.rb",
     "spec/search/operators/nondominated_subset_spec.rb",
     "spec/search/operators/pointCrossover_spec.rb",
     "spec/search/operators/pointDeletion_spec.rb",
     "spec/search/operators/pointMutation_spec.rb",
     "spec/search/operators/random_guess_spec.rb",
     "spec/search/operators/resample_and_clone_spec.rb",
     "spec/search/operators/resample_values_spec.rb",
     "spec/search/operators/sizePreservingMutation_spec.rb",
     "spec/search/operators/uniformBackboneCrossover_spec.rb",
     "spec/search/stations/station_spec.rb",
     "spec/spec_helper.rb",
     "test/test_generator_helper.rb",
     "test/test_nudge_generator.rb"
  ]
  s.homepage = %q{http://github.com/Vaguery/PragGP}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Genetic Programming in the Nudge language}
  s.test_files = [
    "spec/data/couchdb_spec.rb",
     "spec/instructions/bool_basics_spec.rb",
     "spec/instructions/bool_stack_spec.rb",
     "spec/instructions/code_basics_spec.rb",
     "spec/instructions/code_stack_spec.rb",
     "spec/instructions/comparisons_spec.rb",
     "spec/instructions/conditionals_spec.rb",
     "spec/instructions/conversions_spec.rb",
     "spec/instructions/exec_spec.rb",
     "spec/instructions/float_calculations_spec.rb",
     "spec/instructions/float_stack_spec.rb",
     "spec/instructions/float_transcendental_spec.rb",
     "spec/instructions/instruction_class_spec.rb",
     "spec/instructions/int_calculations_spec.rb",
     "spec/instructions/int_stack_spec.rb",
     "spec/instructions/name_basics_spec.rb",
     "spec/instructions/name_bindings_spec.rb",
     "spec/instructions/name_stack_spec.rb",
     "spec/instructions/random_values_spec.rb",
     "spec/integration/search_integration.rb",
     "spec/interpreter/channel_spec.rb",
     "spec/interpreter/codeblock_spec.rb",
     "spec/interpreter/codetype_spec.rb",
     "spec/interpreter/erc_spec.rb",
     "spec/interpreter/instruction_spec.rb",
     "spec/interpreter/interpreter_spec.rb",
     "spec/interpreter/literal_spec.rb",
     "spec/interpreter/parser_spec.rb",
     "spec/interpreter/stack_spec.rb",
     "spec/interpreter/treetophelpers.rb",
     "spec/interpreter/types_spec.rb",
     "spec/parsers/codeblock_parser_spec.rb",
     "spec/parsers/common_parser_spec.rb",
     "spec/parsers/instruction_parser_spec.rb",
     "spec/parsers/nudge_parser_spec.rb",
     "spec/parsers/reference_parser_spec.rb",
     "spec/parsers/value_parser_spec.rb",
     "spec/search/batch_spec.rb",
     "spec/search/experiments/experiment_spec.rb",
     "spec/search/helpers_spec.rb",
     "spec/search/individual_spec.rb",
     "spec/search/operators/any_one_sampler_spec.rb",
     "spec/search/operators/dominated_quantile_spec.rb",
     "spec/search/operators/duplicate_genomes_spec.rb",
     "spec/search/operators/evaluators/program_point_evaluator_spec.rb",
     "spec/search/operators/evaluators/test_case_evaluator_spec.rb",
     "spec/search/operators/infrastructure_spec.rb",
     "spec/search/operators/most_dominated_subset_spec.rb",
     "spec/search/operators/nondominated_subset_spec.rb",
     "spec/search/operators/pointCrossover_spec.rb",
     "spec/search/operators/pointDeletion_spec.rb",
     "spec/search/operators/pointMutation_spec.rb",
     "spec/search/operators/random_guess_spec.rb",
     "spec/search/operators/resample_and_clone_spec.rb",
     "spec/search/operators/resample_values_spec.rb",
     "spec/search/operators/sizePreservingMutation_spec.rb",
     "spec/search/operators/uniformBackboneCrossover_spec.rb",
     "spec/search/stations/station_spec.rb",
     "spec/spec_helper.rb",
     "test/test_generator_helper.rb",
     "test/test_nudge_generator.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<couchrest>, [">= 0.33"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0.9.4"])
      s.add_runtime_dependency(%q<treetop>, [">= 1.4.3"])
      s.add_runtime_dependency(%q<polyglot>, [">= 0.2.9"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.5"])
    else
      s.add_dependency(%q<couchrest>, [">= 0.33"])
      s.add_dependency(%q<sinatra>, [">= 0.9.4"])
      s.add_dependency(%q<treetop>, [">= 1.4.3"])
      s.add_dependency(%q<polyglot>, [">= 0.2.9"])
      s.add_dependency(%q<activesupport>, [">= 2.3.5"])
    end
  else
    s.add_dependency(%q<couchrest>, [">= 0.33"])
    s.add_dependency(%q<sinatra>, [">= 0.9.4"])
    s.add_dependency(%q<treetop>, [">= 1.4.3"])
    s.add_dependency(%q<polyglot>, [">= 0.2.9"])
    s.add_dependency(%q<activesupport>, [">= 2.3.5"])
  end
end

