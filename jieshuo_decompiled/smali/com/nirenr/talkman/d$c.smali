.class Lcom/nirenr/talkman/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/d;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/nirenr/talkman/d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/d;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/d$c;->b:Lcom/nirenr/talkman/d;

    iput-object p2, p0, Lcom/nirenr/talkman/d$c;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/d$c;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaApplication;->getCmdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object p1, p0, Lcom/nirenr/talkman/d$c;->b:Lcom/nirenr/talkman/d;

    invoke-static {p1}, Lcom/nirenr/talkman/d;->a(Lcom/nirenr/talkman/d;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V

    iget-object p1, p0, Lcom/nirenr/talkman/d$c;->b:Lcom/nirenr/talkman/d;

    invoke-static {p1}, Lcom/nirenr/talkman/d;->b(Lcom/nirenr/talkman/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/d$c;->b:Lcom/nirenr/talkman/d;

    invoke-static {v0}, Lcom/nirenr/talkman/d;->b(Lcom/nirenr/talkman/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f07059d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/d$c;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/d$c;->b:Lcom/nirenr/talkman/d;

    invoke-static {p1}, Lcom/nirenr/talkman/d;->b(Lcom/nirenr/talkman/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const v0, 0x7f07042a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/d;->c(Lcom/nirenr/talkman/d;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
