<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>בלשיות המחקר - פתיחת שיעור</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        .header {
            background: linear-gradient(45deg, #FF6B6B, #4ECDC4);
            color: white;
            text-align: center;
            padding: 30px;
            position: relative;
        }

        .header::before {
            content: "🔍";
            font-size: 50px;
            position: absolute;
            top: 20px;
            right: 30px;
            opacity: 0.7;
        }

        .header h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .subtitle {
            font-size: 1.2em;
            opacity: 0.9;
        }

        .game-area {
            padding: 30px;
        }

        .instructions {
            background: #f8f9fa;
            border-radius: 15px;
            padding: 20px;
            margin-bottom: 25px;
            border-right: 5px solid #FF6B6B;
            text-align: center;
        }

        .instructions h2 {
            color: #FF6B6B;
            margin-bottom: 10px;
            font-size: 1.4em;
        }

        .instructions p {
            font-size: 1.1em;
            line-height: 1.6;
        }

        .timer {
            background: rgba(255, 255, 255, 0.95);
            padding: 15px 25px;
            border-radius: 50px;
            font-size: 1.3em;
            font-weight: bold;
            color: #667eea;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            margin: 20px auto;
            text-align: center;
            max-width: 200px;
        }

        .cases-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .case-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 3px solid transparent;
        }

        .case-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.15);
        }

        .case-header {
            padding: 20px;
            color: white;
            font-weight: bold;
            font-size: 1.2em;
            text-align: center;
        }

        .case1 .case-header { background: linear-gradient(45deg, #FF6B6B, #FF8E8E); }
        .case2 .case-header { background: linear-gradient(45deg, #4ECDC4, #45B7B8); }
        .case3 .case-header { background: linear-gradient(45deg, #45B7B8, #96CEB4); }

        .case-content {
            padding: 20px;
            line-height: 1.7;
            font-size: 0.95em;
        }

        .researcher {
            font-weight: bold;
            color: #667eea;
            font-size: 1.05em;
        }

        .question {
            background: #fff3cd;
            border-radius: 10px;
            padding: 15px;
            margin-top: 15px;
            border-right: 4px solid #ffc107;
            font-weight: bold;
            color: #856404;
        }

        .discussion-area {
            background: linear-gradient(45deg, #FFA726, #FFCC02);
            color: white;
            padding: 25px;
            border-radius: 15px;
            margin-top: 25px;
            text-align: center;
        }

        .discussion-area h3 {
            margin-bottom: 10px;
            font-size: 1.3em;
        }

        .pulse {
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        @media (max-width: 768px) {
            .header h1 { font-size: 2em; }
            .cases-grid { grid-template-columns: 1fr; }
            .case-content { padding: 15px; font-size: 0.9em; }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🕵️‍♀️ בלשיות המחקר</h1>
            <p class="subtitle">מה לא בסדר במחקרים הללו?</p>
        </div>

        <div class="game-area">
            <div class="instructions">
                <h2>🎯 האתגר שלכן</h2>
                <p>קראו את 3 התרחישים הבאים ובזוגות זהו: <strong>מה הבעיה המרכזית בכל מחקר?</strong></p>
                <p>יש לכן 4 דקות - תתחילו!</p>
            </div>

            <div class="timer pulse" id="timer">⏰ זמן: 4:00</div>

            <div class="cases-grid">
                <div class="case-card case1">
                    <div class="case-header">🧠 תרחיש 1: קשב וריכוז</div>
                    <div class="case-content">
                        <p><span class="researcher">ד"ר כהן</span> רוצה לבדוק האם תוכנת מחשב חדשה משפרת קשב של ילדים עם ADHD.</p>
                        <p>היא בחרה את <strong>15 הילדים הכי בעייתיים</strong> לקבוצת הניסוי (יקבלו תוכנה), ואת <strong>15 הילדים הכי שקטים</strong> לקבוצת הביקורת (ימשיכו כרגיל).</p>
                        <p>אחרי חודש - קבוצת הניסוי השתפרה משמעותית!</p>
                        <div class="question">🤔 מה הבעיה כאן?</div>
                    </div>
                </div>

                <div class="case-card case2">
                    <div class="case-header">📚 תרחיש 2: קשיי קריאה</div>
                    <div class="case-content">
                        <p><span class="researcher">ד"ר לוי</span> חוקר "שיטת קריאה רב-חושית" לילדים עם דיסלקציה.</p>
                        <p><strong>מורות צעירות (ותק 2-5 שנים)</strong> בחרו לנסות את השיטה החדשה.<br>
                        <strong>מורות ותיקות (ותק 15-25 שנה)</strong> העדיפו להישאר עם השיטה הרגילה.</p>
                        <p>תוצאה: השיטה החדשה הראתה שיפור משמעותי!</p>
                        <div class="question">🤔 מה הבעיה כאן?</div>
                    </div>
                </div>

                <div class="case-card case3">
                    <div class="case-header">🤖 תרחיש 3: אוטיזם וטכנולוגיה</div>
                    <div class="case-content">
                        <p><span class="researcher">ד"ר שמיר</span> חוקרת השפעת טאבלטים חינוכיים על ילדים עם אוטיזם.</p>
                        <p>מחקר מצוין: 50 ילדים בני 6-8, חלוקה אקראית, קבוצות מאוזנות, תוצאות מרשימות!</p>
                        <p><strong>אבל...</strong> כשחוקרים אחרים ניסו לחזור על המחקר עם ילדים בגילים שונים ומתרבויות שונות - לא קיבלו תוצאות דומות.</p>
                        <div class="question">🤔 מה הבעיה כאן?</div>
                    </div>
                </div>
            </div>

            <div class="discussion-area">
                <h3>💭 מוכנות לגלות מה באמת קרה?</h3>
                <p>בהמשך השיעור נלמד איך לזהות ולהימנע מבעיות מתודולוגיות אלו!</p>
            </div>
        </div>
    </div>

    <script>
        let timeLeft = 240; // 4 minutes in seconds

        function updateTimer() {
            const minutes = Math.floor(timeLeft / 60);
            const seconds = timeLeft % 60;
            document.getElementById('timer').textContent = `⏰ זמן: ${minutes}:${seconds.toString().padStart(2, '0')}`;
            
            if (timeLeft <= 60) {
                document.getElementById('timer').style.background = 'rgba(255, 107, 107, 0.9)';
                document.getElementById('timer').style.color = 'white';
            }
            
            if (timeLeft <= 0) {
                document.getElementById('timer').textContent = '⏰ הזמן תם!';
                document.getElementById('timer').classList.add('pulse');
                clearInterval(timerInterval);
                
                // Show completion message
                setTimeout(() => {
                    const discussionArea = document.querySelector('.discussion-area');
                    discussionArea.innerHTML = '<h3>✅ מצוין! בואו נדון בתשובות שלכן</h3><p>איזה בעיות מתודולוגיות זיהיתן?</p>';
                    discussionArea.style.background = 'linear-gradient(45deg, #4CAF50, #66BB6A)';
                }, 1000);
            }
            
            timeLeft--;
        }

        // Start timer
        const timerInterval = setInterval(updateTimer, 1000);

        // Add hover effects
        document.querySelectorAll('.case-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-5px) scale(1.02)';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0) scale(1)';
            });
        });

        // Add click effect for engagement
        document.querySelectorAll('.question').forEach(question => {
            question.addEventListener('click', function() {
                this.style.background = '#d1ecf1';
                this.style.borderColor = '#17a2b8';
                this.style.transform = 'scale(1.05)';
                setTimeout(() => {
                    this.style.transform = 'scale(1)';
                }, 200);
            });
        });
    </script>
</body>
</html>
