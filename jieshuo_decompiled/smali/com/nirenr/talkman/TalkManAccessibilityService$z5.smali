.class Lcom/nirenr/talkman/TalkManAccessibilityService$z5;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->P5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->f([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected varargs f([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "init loading6"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->a1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadSoundPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->k(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->l(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->n(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadHotKeyPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->o(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadHotKeyPackage(Ljava/util/Set;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_5
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->Z(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/o;

    move-result-object p1

    invoke-virtual {p1}, Lk2/o;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    :try_start_6
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u65e5\u5fd7"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaService;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_3

    array-length v2, p1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide v7, 0x9a7ec800L

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "init loaded"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
