const ap = new APlayer({
    container: document.getElementById('player1'),
    autoplay: true,
	loop: 'all',
	order: 'random',
	preload: 'metadata',
	volume: 0.7,
	mutex: true,
	//lrcType: 3,
	narrow: false,
	listFolded: false,
    //fixed: true,
	theme: '#e6d0b2',
    audio: [
      {
        name: "恋爱循环",
        artist: '花泽香菜',
        url: '/music/mp3/LoveScenario.mp3',
        cover: '/music/pic/LoveScenario.jpg',
      },
      {
        name: 'Zeze',
        artist: 'IU',
        url: '/music/mp3/IU-Zeze.mp3',
        cover: '/music/pic/zeze-iu.jpg',
      },
      {
        name: 'BIBI',
        artist: 'IU',
        url: '/music/mp3/李知恩_IU_-삐삐（BBIBBI）.mp3',
        cover: '/music/pic/BIBI-iu.jpg',
      },
      {
        name: 'unknown',
        artist: 'IU',
        url: '/music/mp3/IU-잼잼.mp3',
        cover: '/music/pic/Friday-iu.jpg',
      },
      {
        name: 'unknown',
        artist: 'IU',
        url: '/music/mp3/IU-팔레트-_Feat.-G-DRAGON_.mp3',
        cover: '/music/pic/iu.jpg',
      },
	  {
        name: 'unknown',
        artist: 'IU',
        url: '/music/mp3/IU-마쉬멜로우.mp3',
        cover: '/music/pic/iu.jpg',
      }
    ]
});
