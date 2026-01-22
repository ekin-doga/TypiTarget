KbName('UnifyKeyNames')

try
    KbQueueCreate([])
    KbQueueStart([])
    disp('Que started')
catch ME
    disp('Que failed')
    diso(ME.message)
end

KbQueueRelease([])


3     4     5     6     7     9    11    14    15

idx = 11;

KbName('UnifyKeyNames')
KbQueueCreate([idx])
KbQueueStart([idx])

disp('Press');

key = [];

pressed = 0;

while 1

    [pressed, firstPress] = KbQueueCheck([idx]);

    if pressed

        key = KbName(firstPress)

        break
    end

end

KbQueueRelease([idx])


