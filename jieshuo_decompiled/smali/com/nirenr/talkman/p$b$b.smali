.class Lcom/nirenr/talkman/p$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/p$b;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/nirenr/talkman/p$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/p$b;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/p$b$b;->b:Lcom/nirenr/talkman/p$b;

    iput-object p2, p0, Lcom/nirenr/talkman/p$b$b;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/p$b$b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/p$b$b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/p$b$b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/LuaUtil;->zip(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/p$b$b;->b:Lcom/nirenr/talkman/p$b;

    iget-object v0, v0, Lcom/nirenr/talkman/p$b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p2}, Lcom/nirenr/talkman/p;->a(Landroid/content/Context;Ljava/io/File;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
