.class Lcom/nirenr/talkman/dialog/b$g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/b$g;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/b$g;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/b$g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$d;->b:Lcom/nirenr/talkman/dialog/b$g;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/b$g$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b$g$d;->a:Ljava/lang/String;

    new-instance v1, Lcom/nirenr/talkman/dialog/b$g$d$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/b$g$d$a;-><init>(Lcom/nirenr/talkman/dialog/b$g$d;)V

    const-string v2, "note"

    invoke-static {v2, p1, v0, v1}, Lcom/nirenr/talkman/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method
