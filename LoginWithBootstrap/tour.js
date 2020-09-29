const intro = introJs();
intro.setOptions({
    steps: [
        {
            intro: 'Welcome to Our new website! budd'
        },
        {
            element: '#step-two',
            intro:'go scroll this page before going to next.'
        }
    ]
})

intro.start();