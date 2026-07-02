.class public Lcom/noname81/lmt/TouchServiceResult;
.super Ljava/lang/Object;
.source "TouchServiceResult.java"


# static fields
.field static final Delete:I = 0x2

.field static final Diamond:I = 0x1

.field static final DiamondDouble:I = 0xd

.field static final Questionmark:I = 0x16

.field static final QuestionmarkDouble:I = 0xb

.field static final Square:I = 0x0

.field static final SquareDouble:I = 0xc

.field static final SwipeDown:I = 0x11

.field static final SwipeDownDouble:I = 0x6

.field static final SwipeDownUp:I = 0x15

.field static final SwipeDownUpDouble:I = 0xa

.field static final SwipeLeft:I = 0xf

.field static final SwipeLeftDouble:I = 0x4

.field static final SwipeLeftRight:I = 0x13

.field static final SwipeLeftRightDouble:I = 0x8

.field static final SwipeRight:I = 0xe

.field static final SwipeRightDouble:I = 0x3

.field static final SwipeRightLeft:I = 0x12

.field static final SwipeRightLeftDouble:I = 0x7

.field static final SwipeUp:I = 0x10

.field static final SwipeUpDouble:I = 0x5

.field static final SwipeUpDown:I = 0x14

.field static final SwipeUpDownDouble:I = 0x9

.field static final Unknown:I = 0x17

.field static final captions:[Ljava/lang/String;

.field static final names:[Ljava/lang/String;


# instance fields
.field private gesture:I

.field private name:Ljava/lang/String;

.field private overlayID:I

.field private score:F

.field private startX:F

.field private startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Square"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Diamond"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Delete"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "SwipeRightDouble"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "SwipeLeftDouble"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "SwipeUpDouble"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "SwipeDownDouble"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "SwipeRightLeftDouble"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "SwipeLeftRightDouble"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "SwipeUpDownDouble"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "SwipeDownUpDouble"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "QuestionmarkDouble"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "SquareDouble"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "DiamondDouble"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    .line 55
    sput-object v1, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Starting point is upper left corner"

    aput-object v1, v0, v3

    const-string v2, "Starting point is at the bottom"

    aput-object v2, v0, v4

    const-string v3, "Starting point is top left"

    aput-object v3, v0, v5

    const-string v4, "Swipe from left to right"

    aput-object v4, v0, v6

    const-string v4, "Swipe from right to left"

    aput-object v4, v0, v7

    const-string v4, "Swipe from bottom to top"

    aput-object v4, v0, v8

    const-string v4, "Swipe from top to bottom"

    aput-object v4, v0, v9

    const-string v4, "Swipe right and then left"

    aput-object v4, v0, v10

    const-string v4, "Swipe left and then right"

    aput-object v4, v0, v11

    const-string v4, "Swipe up and then down"

    aput-object v4, v0, v12

    const-string v4, "Swipe down and then up"

    aput-object v4, v0, v13

    aput-object v3, v0, v14

    aput-object v1, v0, v15

    aput-object v2, v0, v16

    .line 61
    sput-object v0, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;FIFF)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/noname81/lmt/TouchServiceResult;->gesture:I

    .line 79
    iput-object p2, p0, Lcom/noname81/lmt/TouchServiceResult;->name:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/noname81/lmt/TouchServiceResult;->score:F

    .line 81
    iput p4, p0, Lcom/noname81/lmt/TouchServiceResult;->overlayID:I

    .line 82
    iput p5, p0, Lcom/noname81/lmt/TouchServiceResult;->startX:F

    .line 83
    iput p6, p0, Lcom/noname81/lmt/TouchServiceResult;->startY:F

    return-void
.end method


# virtual methods
.method getGesture()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/noname81/lmt/TouchServiceResult;->gesture:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/noname81/lmt/TouchServiceResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOverlayID()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/noname81/lmt/TouchServiceResult;->overlayID:I

    return v0
.end method

.method getScore()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/noname81/lmt/TouchServiceResult;->score:F

    return v0
.end method

.method getStartX()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/noname81/lmt/TouchServiceResult;->startX:F

    return v0
.end method

.method getStartY()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/noname81/lmt/TouchServiceResult;->startY:F

    return v0
.end method

.method setGesture(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/noname81/lmt/TouchServiceResult;->gesture:I

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/noname81/lmt/TouchServiceResult;->name:Ljava/lang/String;

    return-void
.end method

.method setOverlayID(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/noname81/lmt/TouchServiceResult;->overlayID:I

    return-void
.end method

.method setScore(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/noname81/lmt/TouchServiceResult;->score:F

    return-void
.end method

.method setStartX(F)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/noname81/lmt/TouchServiceResult;->startX:F

    return-void
.end method

.method setStartY(F)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/noname81/lmt/TouchServiceResult;->startY:F

    return-void
.end method

.method toDebugString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/noname81/lmt/TouchServiceResult;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/noname81/lmt/TouchServiceResult;->score:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/noname81/lmt/TouchServiceResult;->startX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/noname81/lmt/TouchServiceResult;->startY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Gesture: %s, score: %.2f, startX: %.2f, startY: %.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 89
    iget-object v2, p0, Lcom/noname81/lmt/TouchServiceResult;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/noname81/lmt/TouchServiceResult;->score:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/noname81/lmt/TouchServiceResult;->startX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/noname81/lmt/TouchServiceResult;->startY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Gesture: %s\nScore: %.2f percent\nStartX: %.2f\nStartY: %.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
