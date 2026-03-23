.class Lcom/nirenr/talkman/settings/SoundManager$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$2;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundManager$2$2;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$2;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget v1, v1, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$2;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundManager;->b(Lcom/nirenr/talkman/settings/SoundManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2$2;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/settings/SoundManager$2$2;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget v3, v3, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2$2;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundManager;->b(Lcom/nirenr/talkman/settings/SoundManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/androlua/LuaUtil;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$2;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/SoundManager;->d(Lcom/nirenr/talkman/settings/SoundManager;)V

    return-void
.end method
