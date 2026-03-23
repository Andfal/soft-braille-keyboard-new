.class Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a$a;->a:Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a$a;->a:Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a;

    iget-object v0, v0, Lcom/nirenr/talkman/util/HtmlUtil$c$a$a$a;->a:Lcom/nirenr/talkman/util/HtmlUtil$c$a$a;

    iget-object v0, v0, Lcom/nirenr/talkman/util/HtmlUtil$c$a$a;->a:Lcom/nirenr/talkman/util/HtmlUtil$c$a;

    iget-object v0, v0, Lcom/nirenr/talkman/util/HtmlUtil$c$a;->a:Lcom/nirenr/talkman/util/HtmlUtil$c;

    iget-object v1, v0, Lcom/nirenr/talkman/util/HtmlUtil$c;->b:Lcom/nirenr/talkman/util/HtmlUtil;

    iget-object v0, v0, Lcom/nirenr/talkman/util/HtmlUtil$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/util/HtmlUtil;->m(Ljava/lang/String;)I

    return-void
.end method
