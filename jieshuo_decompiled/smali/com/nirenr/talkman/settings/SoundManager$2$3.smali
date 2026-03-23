.class Lcom/nirenr/talkman/settings/SoundManager$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundManager$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/SoundManager$2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    const p2, 0x7f070475

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundManager;->b(Lcom/nirenr/talkman/settings/SoundManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v3, v3, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v3}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget v4, v4, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "clock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "clock_"

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundManager;->b(Lcom/nirenr/talkman/settings/SoundManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v3, v3, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v3}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget v4, v4, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "effect"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "effect_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget v2, v2, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".spk"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundManager;->b(Lcom/nirenr/talkman/settings/SoundManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget v3, v3, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v2, v2, v3

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/androlua/LuaUtil;->zip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "file"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    const v1, 0x7f07023d

    const-string v2, "https://jieshuo.ltd/download/"

    invoke-static {p2, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "sound/upload.php"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/nirenr/talkman/settings/SoundManager$2$3$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/SoundManager$2$3$1;-><init>(Lcom/nirenr/talkman/settings/SoundManager$2$3;)V

    invoke-static {p2, v0, p1, v1}, Lcom/nirenr/talkman/util/HttpUtil;->j(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void
.end method
