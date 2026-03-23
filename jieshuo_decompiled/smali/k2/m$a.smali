.class Lk2/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/m;->w(JJ[[I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Path;

.field final synthetic b:J

.field final synthetic c:Lk2/m;


# direct methods
.method constructor <init>(Lk2/m;Landroid/graphics/Path;J)V
    .locals 0

    iput-object p1, p0, Lk2/m$a;->c:Lk2/m;

    iput-object p2, p0, Lk2/m$a;->a:Landroid/graphics/Path;

    iput-wide p3, p0, Lk2/m$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lk2/m$a;->c:Lk2/m;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance v9, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-object v4, p0, Lk2/m$a;->a:Landroid/graphics/Path;

    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lk2/m$a;->b:J

    const-wide/16 v10, 0x0

    cmp-long v3, v7, v10

    if-gez v3, :cond_0

    const-wide/16 v7, 0x64

    :cond_0
    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-virtual {v0, v2}, Lk2/m;->x([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk2/m$a;->c:Lk2/m;

    invoke-static {v0}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v2, p0, Lk2/m$a;->c:Lk2/m;

    invoke-static {v2}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object v0, p0, Lk2/m$a;->c:Lk2/m;

    invoke-static {v0}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
