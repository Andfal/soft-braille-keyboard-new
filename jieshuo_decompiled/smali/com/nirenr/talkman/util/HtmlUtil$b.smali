.class Lcom/nirenr/talkman/util/HtmlUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/HtmlUtil;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/util/HtmlUtil;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/HtmlUtil;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil$b;->b:Lcom/nirenr/talkman/util/HtmlUtil;

    iput-object p2, p0, Lcom/nirenr/talkman/util/HtmlUtil$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil$b;->b:Lcom/nirenr/talkman/util/HtmlUtil;

    iget-object v1, p0, Lcom/nirenr/talkman/util/HtmlUtil$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/HtmlUtil;->m(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nirenr/talkman/util/HtmlUtil$b$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/util/HtmlUtil$b$a;-><init>(Lcom/nirenr/talkman/util/HtmlUtil$b;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
