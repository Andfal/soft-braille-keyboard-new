.class public Lk2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 18

    const-string v0, "audio"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x5a

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x5a

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 18

    const-string v0, "audio"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x58

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x58

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 18

    const-string v0, "audio"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x57

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x57

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 18

    const-string v0, "audio"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x4f

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x4f

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 18

    const-string v0, "audio"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x59

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x59

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method
