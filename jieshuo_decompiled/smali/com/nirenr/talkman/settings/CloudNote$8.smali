.class Lcom/nirenr/talkman/settings/CloudNote$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote;->r(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/CloudNote;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$8;->b:Lcom/nirenr/talkman/settings/CloudNote;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$8;->b:Lcom/nirenr/talkman/settings/CloudNote;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/CloudNote;->f(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$8;->b:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CloudNote;->g(Lcom/nirenr/talkman/settings/CloudNote;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$8;->b:Lcom/nirenr/talkman/settings/CloudNote;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$8;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/nirenr/talkman/settings/CloudNote;->k(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
