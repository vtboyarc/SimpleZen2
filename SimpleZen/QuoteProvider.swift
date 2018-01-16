//
//  QuoteProvider.swift
//  SimpleZen
//
//  Created by Adam Carter on 3/17/17.
//  Copyright © 2017 Adam Carter. All rights reserved.
//

import GameKit

struct QuoteProvider {
    let quotes = [
        "There is nowhere to arrive except the present moment. - Thic Nhat Hanh",
        "Your worst enemy cannot harm you as much as your own thoughts, unguarded. - Buddha",
        "Peace comes from within. Do not seek it without. – Buddha",
        "There are two mistakes one can make along the road to truth: not going all the way, and not starting. – Buddha",
        "The soul always knows what to do to heal itself. The challenge is to silence the mind. – Caroline Myss",
        "Do not let the behavior of others destroy your inner peace. – Dalai Lama",
        "If you cultivate the attitude of indifference towards the mind, gradually you will cease to identify with it. – Annamalai Swami",
        "Mental problems feed on the attention that you give them. The more you worry about them, the stronger they become. If you ignore them, they lose their power and finally vanish. – Annamalai Swami",
        "Be here now. Be someplace else later. Is that so complicated? – David M. Bader",
        "Prayer is when you talk to God; meditation is when you listen to God. – Diana Robinson",
        "Prayer is the raising of one’s mind and heart to God or the requesting of good things from God. - Saint John Damascene",
        "By humble and faithful prayer, the soul acquires, with time and perseverance, every virtue. Saint - Catherine of Siena",
        "How to pray? This is a simple matter. I would say: Pray any way you like, so long as you do pray. - Pope John Paul II",
        "It is morally impossible for him who neglects meditation to live without sin. - Saint Alphonsus",
        "If we were meant to talk more than listen, we would have two mouths and one ear. - Mark Twain",
        "One conscious breathe in and out is a meditation. – Eckhart Tolle",
        "It is impossible for a man to learn what he thinks he already knows. – Epictetus",
        "Silence is a fence around wisdom. – German Proverb",
        "Mind is there, in front of you. Don’t log in. – Mooji",
        "All experiences come and go. What witnesses experiencing itself? – Mooji",
        "You want to be free as the ego, but you need to be free from the ego. To be free from it is to understand its unreality. – Mooji",
        "Meditation is the signpost directing the steps to the main highway of realization. – Guy Bogart",
        "To maintain a powerful life force, forget yourself, forget about living and dying, and bring your full attention into this moment. – H.E. Davey",
        "The spirit of meditation is the combating against the weight of one’s feelings. – Hakuin Ekaku",
        "Meditation is the secret of all growth in spiritual life and knowledge. – James Allen",
        "If one thinks of oneself as free, one is free, and if one thinks of oneself as bound, one is bound. Here this saying is true, “As one thinks, so one becomes”. – Ashtavakra Gita",
        "The affairs of the world will go on forever. Do not delay the practice of meditation. – Jetsun Milarepa",
        "The mind in itself can make a heaven of hell or a hell of heaven. – John Milton",
        "Meditation provides a way of learning how to let go. As we sit, the self we’ve been trying to construct and make into a nice, neat package continues to unravel. – John Welwood",
        "Sitting like a mountain let your mind rise, fly and soar. – Sogyal Rinpoche",
        "The gift of learning to meditate is the greatest gift you can give yourself in this lifetime. – Sogyal Rinpoche",
        "Where there is peace and meditation, there is neither anxiety nor doubt. – St Francis De Sales",
        "Even in the midst of disturbance, the stillness of the mind can offer sanctuary. – Stephen Richards",
        "When you reach a calm and quiet meditative state, that is when you can hear the sound of silence. – Stephen Richards",
        "Your goal is not to battle with the mind, but to witness the mind. – Swami Muktananda",
        "Meditation is offering your genuine presence to yourself in every moment. – Thich Nhat Hanh",
        "It is of great importance, when we begin to practise meditation, not to let ourselves be frightened by our own thoughts. – Unknown",
        "Truth is not something that you can search outside, it is something that needs to be explored within. Truth descends when you are in the state of no-mind. Being meditative leads into the state of no-mind. – Vishwas Chavan",
        "There is only one meditation – the rigorous refusal to harbor thoughts. – Nisargadatta Maharaj",
        "The main factor in meditation is to keep the mind active in its own pursuit without taking in external impressions or thinking of other matters. – Ramana Maharshi",
        "Whenever a thought arises, instead of trying even a little either to follow it up or to fulfil it, it would be better to first enquire, “To whom did this thought arise?” – Ramana Maharshi",
        "See who is in the subject. The investigation leads you to pure consciousness beyond the subject. – Ramana Maharshi",
        "Mind can be your best friend or your worst enemy. – Kabira",
        "Go within every day and find the inner strength, so that the world cannot blow your candle out. – Katherine Dunham",
        "Nature does not hurry, yet everything is accomplished. – Lao Tzu",
        "Quiet the mind, and the soul will speak. – Ma Jaya Sati Bhagavati",
        "Dwell on the beauty of life. Watch the stars, and see yourself running with them. ― Marcus Aurelius",
        "You have power over your mind - not outside events. Realize this, and you will find strength. ― Marcus Aurelius",
        "The happiness of your life depends upon the quality of your thoughts. ― Marcus Aurelius",
        "Everything we hear is an opinion, not a fact. Everything we see is a perspective, not the truth. ― Marcus Aurelius",
        "Waste no more time arguing about what a good man should be. Be one. ― Marcus Aurelius",
        "Accept the things to which fate binds you, and love the people with whom fate brings you together,but do so with all your heart. ― Marcus Aurelius",
        "When you arise in the morning think of what a privilege it is to be alive, to think, to enjoy, to love ... ― Marcus Aurelius",
        "The best revenge is to be unlike him who performed the injury. ― Marcus Aurelius",
        "If you are distressed by anything external, the pain is not due to the thing itself, but to your estimate of it; and this you have the power to revoke at any moment. ― Marcus Aurelius",
        "Our life is what our thoughts make it. ― Marcus Aurelius",
        "It is not death that a man should fear, but he should fear never beginning to live. ― Marcus Aurelius",
        "The soul becomes dyed with the colour of its thoughts. ― Marcus Aurelius",
        "If it is not right do not do it; if it is not true do not say it. ― Marcus Aurelius",
        "Very little is needed to make a happy life; it is all within yourself in your way of thinking. ― Marcus Aurelius",
        "Listen to the compass of your heart. All you need lies within you. – Mary Anne Radmacher",
        "Meditation stills the wandering mind and establishes us forever in a state of peace. – Muktananda",
        "We spend a great deal of time telling God what we think should be done, and not enough time waiting in the stillness for God to tell us what to do. – Peace Pilgrim",
        "It’s helpful to remind yourself that meditation is about opening and relaxing with whatever arises, without picking and choosing. – Pema Chödrön",
        "You get peace of mind not by thinking about it or imagining it, but by quietening and relaxing the restless mind. – Remez Sasson",
        "Your mind is your instrument. Learn to be its master and not its slave. – Remez Sasson",
        "A most useful approach to meditation practice is to consider it the most important activity of each day. Schedule it as you would an extremely important appointment, and unfailingly keep your appointment. – Roy Eugene Davis",
        "Keep your heart clear and transparent and you will never be bound. A single disturbed thought creates ten thousand distractions. – Ryokan",
        "Learn to enjoy the way as much as you would enjoy when you reach the destination. – Sakshi Chetana",
        "We must experience the Truth in a direct, practical and real way. This is only possible in the stillness and silence of the mind; and this is achieved by means of meditation. – Samael Aun Weor",
        "It is sometimes said that the first stages of the meditation process are the most difficult. The first distraction is the physical body. Sometimes there is real pain in sitting, and sometimes the ego just tries to distract us by creating itches we will want to scratch. – Sarasvati Buhrman",
        "Meditation is a microcosm, a model, a mirror. The skills we practice when we sit are transferable to the rest of our lives. – Sharon Salzberg",
        "Meditation is the ultimate mobile device; you can use it anywhere, anytime, unobtrusively. – Sharon Salzberg",
        "Mindfulness isn’t difficult, we just need to remember to do it. – Sharon Salzberg",
        "We are what our thoughts have made us; so take care about what you think. Words are secondary. Thoughts live; they travel far. – Swami Vivekananda",
        "When an idea exclusively occupies the mind, it is transformed into an actual physical or mental state. – Swami Vivekananda",
        "Comfort is no test of truth. Truth is often far from being comfortable. – Swami Vivekananda",
        "Meditation: Because some answers can only be found on the Inner net. – Shira Tamir",
        "The true practice of meditation is to sit as if you were drinking water when you are thirsty. – Shunryu Suzuki",
        "The secret of change is to focus all of your energy, not on fighting the old, but on building the new. – Socrates",
        "As gold purified in a furnace loses its impurities and achieves its own true nature, the mind gets rid of the impurities of the attributes of delusion, attachment and purity through meditation and attains Reality. – Adi Shankara",
        "You don’t need any methods to get rid of the wrong ideas you have about yourself. All you have to do is stop believing them. The best way to do this is to replace them with ideas that more accurately reflect the real state of affairs. – Annamalai Swami",
        "If you can resist the impulse to claim each and every thought as your own, you will come to a startling conclusion: you will discover that you are the consciousness in which the thoughts appear and disappear. – Annamalai Swami",
        "Be conscious of yourself as consciousness alone, watch all the thoughts come and go. Come to the conclusion, by direct experience, that you are really consciousness itself, not its ephemeral contents. – Annamalai Swami",
        "Mental problems feed on the attention that you give them. The more you worry about them, the stronger they become. If you ignore them, they lose their power and finally vanish. – Annamalai Swami",
        "Don’t worry about whether you are making progress or not. Just keep your attention on the Self twenty-four hours a day. Meditation is not something that should be done in a particular position at a particular time. It is an awareness and an attitude that must persist through the day. – Annamalai Swami",
        "If you pay attention to thoughts and feelings while you meditate and try to use them to evaluate how well or how badly you are meditating, you will never reach the ultimate silence. Instead you will just get bogged down in mental concepts. – Annamalai Swami",
        "When you know that everything that is happening is only appearing on the screen of consciousness, and that you yourself are the screen on which it all appears, nothing can touch you, harm you or make you afraid. – Annamalai Swami",
        "Meditation is not a way of making your mind quiet. It’s a way of entering into the quiet that’s already there – buried under the 50,000 thoughts the average person thinks every day. – Deepak Chopra",
        "Every time you create a gap in the stream of mind, the light of your consciousness grows stronger. One day you may catch yourself smiling at the voice in your head. This means that you no longer take the content of your mind all that seriously, as your sense of self does not depend on it. – Eckhart Tolle",
        "Having come to realize in the first stage of meditation that we are not our bodies, in the second stage we make an even more astounding discovery; we are not our minds either. – Eknath Easwaran",
        "All you need to do is recognize your true position as the witness. You only have to do this for some time, until the spell is broken. Even after the spell is broken these mental tendencies may arise, but without any power, just like you can see the moon in the daylight. – Mooji",
        "There is no need to believe or disbelieve your thoughts – just don’t enter anything. They don’t distract you – you get distracted. Nothing exists in itself as a distraction – it is you who get distracted. Why? – Mooji",
        "Any action done with awareness is meditation. Meditation means to be fully aware of our actions, thoughts, feelings and emotions. Another name of meditation is passive awareness. – Unknown",
        "Meditation does not answer the questions of the mind, but it dissolves the very mind which creates many questions and confusion in our life. – Unknown",
        "One hour of meditation can not tackle the unconsciousness of rest of the day. Slowly we should bring our meditative quality in all our actions. – Unknown",
        "The meditation cushion is a good place to turn when talk therapy and antidepressants aren’t enough. – Unknown",
        "Meditation teaches us to cure what need not be endured and endure what cannot be cured. – Unknown",
        "Simply notice that you’re aware. At any given moment, you can choose to follow the chain of thoughts, emotions, and sensations that reinforce a perception of yourself as vulnerable and limited, or to remember that your true nature is pure, unconditioned, and incapable of being harmed. – Yongey Mingyur Rinpoche",
        "Whatever you may have to do, watch your mind. Also you must have moments of complete inner peace and quiet, when your mind is absolutely still. If you miss it, you miss the entire thing. If you do not, the silence of the mind will dissolve and absorb all else. – Nisargadatta Maharaj",
        "Stop, look, investigate, ask the right questions, come to the right conclusions and have the courage to act on them and see what happens. The first steps may bring the roof down on your head, but soon the commotion will clear and there will be peace and joy. – Nisargadatta Maharaj",
        "Pain is physical; suffering is mental. Beyond the mind there is no suffering. Pain is essential for the survival of the body, but none compels you to suffer. Suffering is due entirely to clinging or resisting; it is a sign of our unwillingness to move on, to flow with life. – Nisargadatta Maharaj",
        "When pain is accepted for what it is, a lesson and a warning, and deeply looked into and heeded, the separation between pain and pleasure breaks down, both become just experience – painful when resisted, joyful when accepted. – Nisargadatta Maharaj",
        //new quotes for version 1.2 start below
        "Breathe in deeply to bring your mind home to your body. Then look at, or think of, the person triggering this emotion: With mindfulness, you can see that she is unhappy, that she is suffering. You can see her wrong perceptions. You can see that she is not beautiful when she says things that are unkind. - Thich Nhat Hanh",
        "Without fear, we are able to see more clearly our connections to others. Without fear, we have more room for understanding and compassion. Without fear, we are truly free. - Thich Nhat Hanh",
        "Every morning, when we wake up, we have twenty-four brand-new hours to live. What a precious gift! We have the capacity to live in a way that these twenty-four hours will bring peace, joy, and happiness to ourselves and others. - Thich Nhat Hanh",
        "Walk as if you are kissing the Earth with your feet. - Thich Nhat Hanh",
        "Mindfulness helps you to touch the wonders of life for self-nourishment and healing. - Thich Nhat Hanh",
        "Peace in ourselves, peace in the world. - Thich Nhat Hanh",
        "The amount of happiness that you have depends on the amount of freedom you have in your heart. - Thich Nhat Hanh",
        "Knowing yourself is the beginning of all wisdom. - Aristotle",
        "People take different roads seeking fulfillment and happiness. Just because they're not on your road doesn't mean they've gotten lost. - Dalai Lama",
        "There are only two ways to live your life. One is as though nothing is a miracle. The other is as if everything is. - Albert Einstein",
        "If you can't feed a hundred people, then feed just one. - Mother Teresa",
        "And in the end, it's not the years in your life that count. It's the life in your years. - Abraham Lincoln",
        "It is not because things are difficult that we do not dare, it is because we do not dare that they are difficult. – Seneca",
        "Life isn't about finding yourself. Life is about creating yourself. - George Bernard Shaw",
        "You don't have a soul. You are a Soul. You have a body. - C.S. Lewis",
        "When it comes right down to it, all you have is your self. Your Self is a sun with a thousand rays. - Picasso",
        "I am always doing that which I can not do, in order that I may learn how to do it. - Picasso",
        "There is only one corner of the universe you can be certain of improving, and that's your own self. - Aldous Huxley",
        "A man's mind stretched by a new idea can never go back to its original dimensions. - Oliver Wendell Holmes",
        "You seek too much information and not enough transformation. - Sai Baba",
        "Take care of your body. It's the only place you have to live. - Jim Rohn",
        "A house is a home when it shelters the body and comforts the soul. - Phillip Moffitt",
        "If the body be feeble, the mind will not be strong. - Thomas Jefferson",
        "The mind commands the body and it obeys. The mind orders itself and meets resistance. - Saint Augustine",
        "A joyful heart is good for healing, a depressed spirit dries the bones. - Proverbs",
        "I do not know how to distinguish between our waking life and a dream. Are we not always living the life that we imagine we are? -Thoreau",
        "Whatever is worth doing is worth doing well. - Lewis Carroll",
        "Leave nothing for tomorrow which can be done today. - Abraham Lincoln",
        "Faith is the art of holding on to things your reason has once accepted, in spite of you changing moods. - C.S. Lewis",
        "Man is free at the moment he wishes to be. - Voltaire",
        "If you cannot find the truth right where you are, where else do you expect to find it? - Dogen",
        "Our greatest glory is not in never falling, but in rising every time we fall. - Confucius",
        "The practice of forgiveness is our most important contribution to the healing of the world. - Marianne Williamson",
        "The greatest danger for most of us is not that our aim is too high and we miss it, but that it is too low and we reach it. - Michelangelo",
        //new quotes for version 1.3 start below
        "All that is necessary to awaken to yourself as the radiant emptiness of spirit is to stop seeking something more or better or different, and to turn your attention inward to the awake silence that you are. ~Adyashanti",
        "Meditation is meeting eternity in the present moment. It is resolving every problem as it comes. It is resolving every tension as it creeps in. It is facing the challenges of life in a non-fearful way. ~Vimala Thakar",
        "At the end of the day, I can end up just totally wacky, because I’ve made mountains out of molehills. With meditation, I can keep them as molehills. ~Ringo Starr",
        "If we can reach the understanding of what we actually are, there is no better remedy for eliminating all suffering. This is the heart of all spiritual practices. ~Kalu Rinpoche",
        "We try many ways to be awake, but our society still keeps us forgetful. Meditation is to help us remember. ~Thich Nhat Hanh",
        "The thing about meditation is…you become more and more you. ~David Lynch",
        "Plant the seed of meditation and reap the fruit of peace of mind. – Remez Sasson",
        "A calm mind is not disturbed by the waves of thoughts. – Remez Sasson",
        "Meditation and concentration are the way to a life of serenity. – Remez Sasson",
        "A free and silent mind is always in meditation. – Remez Sasson",
        "Calm the winds of your thoughts, and there will be no waves on the ocean of your mind. – Remez Sasson",
        "Constant inner peace and serenity can be yours.  - Remez Sasson",
        "If a person’s basic state of mind is serene and calm, then it is possible for this inner peace to overwhelm a painful physical experience. – The Dalai Lama",
        "Empty your mind, be formless, shapeless – like water. Now you put water into a cup, it becomes the cup, you put water into a bottle, it becomes the bottle, you put it in a teapot, it becomes the teapot. Now water can flow or it can crash. Be water, my friend. – Bruce Lee",
        "If you want to find God, hang out in the space between your thoughts. – Alan Cohen",
        "Meditation is listening to the Divine within. – Edgar Cayce",
        "The body needs material food every day. The soul needs spiritual food.- Remez Sasson",
        "When you have a problem, meditate on it and the answer will come, during the meditation or afterwards. – Remez Sasson",
        "The more man meditates upon good thoughts, the better will be his world and the world at large. – Confucius"
        
    ]
    
    func randomQuote() -> String {
        //GKRandomSource comes from the GameKit import
        //returns a random number. upperBound sets the limit.
        //insures it never returns a value higher than the index value of the array
        let randomNum = GKRandomSource.sharedRandom().nextInt(upperBound: quotes.count)
        
        //un-comment the below line to see the total count of quotes in the console
        //print(quotes.count)
        return quotes[randomNum]
    }

}

extension MutableCollection {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}






