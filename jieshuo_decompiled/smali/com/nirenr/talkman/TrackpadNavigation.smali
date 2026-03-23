.class public Lcom/nirenr/talkman/TrackpadNavigation;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;
    }
.end annotation


# static fields
.field private static g:I = 0x40


# instance fields
.field private a:Landroid/view/MotionEvent;

.field private b:F

.field private c:F

.field private d:Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;

.field private e:F

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->e:F

    iput p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->f:F

    return-void
.end method

.method private a(FF)V
    .locals 5

    iget v0, p0, Lcom/nirenr/talkman/TrackpadNavigation;->e:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_1

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    :cond_1
    iput v1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->e:F

    :cond_2
    iget v0, p0, Lcom/nirenr/talkman/TrackpadNavigation;->f:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_4

    :cond_3
    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpg-float v0, p2, v1

    if-gez v0, :cond_5

    :cond_4
    iput v1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->f:F

    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x3fc49ba5e353f7cfL    # 0.161

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_9

    iget v2, p0, Lcom/nirenr/talkman/TrackpadNavigation;->e:F

    add-float/2addr v2, p1

    float-to-int p1, v2

    sget v3, Lcom/nirenr/talkman/TrackpadNavigation;->g:I

    div-int/2addr p1, v3

    mul-int v3, v3, p1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/nirenr/talkman/TrackpadNavigation;->e:F

    :goto_0
    if-lez p1, :cond_7

    iget-object v2, p0, Lcom/nirenr/talkman/TrackpadNavigation;->d:Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;->moveRight()V

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_7
    :goto_1
    if-gez p1, :cond_9

    iget-object v2, p0, Lcom/nirenr/talkman/TrackpadNavigation;->d:Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;->moveLeft()V

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_9
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v0

    const-wide v0, 0x3fd49ba5e353f7cfL    # 0.322

    cmpl-double p1, v2, v0

    if-ltz p1, :cond_d

    iget p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->f:F

    add-float/2addr p1, p2

    float-to-int p2, p1

    sget v0, Lcom/nirenr/talkman/TrackpadNavigation;->g:I

    div-int/2addr p2, v0

    mul-int v0, v0, p2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->f:F

    move p1, p2

    :goto_2
    if-lez p1, :cond_b

    iget-object v0, p0, Lcom/nirenr/talkman/TrackpadNavigation;->d:Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;->moveDown()V

    :cond_a
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_b
    :goto_3
    if-gez p2, :cond_d

    iget-object p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->d:Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;->moveUp()V

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    neg-float p1, p3

    neg-float p3, p4

    invoke-direct {p0, p1, p3}, Lcom/nirenr/talkman/TrackpadNavigation;->a(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/nirenr/talkman/TrackpadNavigation;->c(Landroid/view/MotionEvent;)Z

    :cond_0
    return p3
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->e:F

    iput p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->f:F

    const/4 p1, 0x1

    return p1
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoverEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TalkManAccessibility"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/TrackpadNavigation;->c(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->a:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/TrackpadNavigation;->a:Landroid/view/MotionEvent;

    iget v3, p0, Lcom/nirenr/talkman/TrackpadNavigation;->b:F

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/nirenr/talkman/TrackpadNavigation;->c:F

    sub-float/2addr v4, v1

    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/nirenr/talkman/TrackpadNavigation;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    :goto_0
    iput v0, p0, Lcom/nirenr/talkman/TrackpadNavigation;->b:F

    iput v1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->c:F

    const/4 p1, 0x1

    return p1
.end method

.method public setOnMoveListener(Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TrackpadNavigation;->d:Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;

    return-void
.end method
