"use client"

import React from 'react';
import { Player, Controls } from '@lottiefiles/react-lottie-player';

type LoadingProps = {
    uploading: boolean;
    encrypting: boolean;
}

const Loading = ({ uploading = false, encrypting = false }: LoadingProps) => {
    return (
        <div className="fixed top-0 left-0 w-screen h-screen flex items-center justify-center bg-gray-900">
            {encrypting &&
                <Player
                    autoplay
                    loop
                    src="/encrypting.json"
                    style={{ height: '300px', width: '300px' }}
                >
                    <Controls visible={false} buttons={['play', 'repeat', 'frame', 'debug']} />
                </Player>
            }
            {uploading &&
                <Player
                    autoplay
                    loop
                    src="/uploading.json"
                    style={{ height: '300px', width: '300px' }}
                >
                    <Controls visible={false} buttons={['play', 'repeat', 'frame', 'debug']} />
                </Player>
            }
        </div>
    );
};

export default Loading;