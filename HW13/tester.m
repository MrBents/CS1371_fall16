tape_1 = checkImage('brick_1_orig_tape.png', 'brick_1_orig_tape_soln.png');
tape_2 = checkImage('brick_2_orig_tape.png', 'brick_2_orig_tape_soln.png');
tape_3 = checkImage('canvas_1_orig_tape.png', 'canvas_1_orig_tape_soln.png');

sound_1 = isequal(hiddenSound('hidden_sound1.png'), hiddenSound_soln('hidden_sound1.png'));
sound_2 = isequal(hiddenSound('hidden_sound2.png'), hiddenSound_soln('hidden_sound2.png'));
sound_3 = isequal(hiddenSound('hidden_sound3.png'), hiddenSound_soln('hidden_sound3.png'));

meme_1 = checkImage('writingHelp_meme_soln.png', 'writingHelp_meme.png');
meme_2 = checkImage('noError_meme_soln.png', 'noError_meme.png');
meme_3 = checkImage('whoIsMATLAB_meme_soln.png', 'whoIsMATLAB_meme.png');
meme_4 = checkImage('2stages_meme_soln.png', '2stages_meme.png');

scale_1 = isequal(microscope('microscope1.png', 45), microscope_soln('microscope1.png', 45));
scale_2 = isequal(microscope('microscope2.png', 100), microscope_soln('microscope2.png', 100));
scale_3 = isequal(microscope('microscope3.png', 30), microscope_soln('microscope3.png', 30));

