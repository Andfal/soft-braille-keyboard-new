.class Lcom/nirenr/talkman/settings/GestureFileShare$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureFileShare$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/GestureFileShare$3;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureFileShare$3;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureFileShare$3$2;->a:Lcom/nirenr/talkman/settings/GestureFileShare$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureFileShare$3$2;->a:Lcom/nirenr/talkman/settings/GestureFileShare$3;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/GestureFileShare$3;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureFileShare$3$2;->a:Lcom/nirenr/talkman/settings/GestureFileShare$3;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/GestureFileShare$3;->b:Lcom/nirenr/talkman/settings/GestureFileShare;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/GestureFileShare;->b(Lcom/nirenr/talkman/settings/GestureFileShare;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureFileShare$3$2;->a:Lcom/nirenr/talkman/settings/GestureFileShare$3;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/GestureFileShare$3;->a:Ljava/lang/String;

    new-instance v2, Lcom/nirenr/talkman/settings/GestureFileShare$3$2$1;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/GestureFileShare$3$2$1;-><init>(Lcom/nirenr/talkman/settings/GestureFileShare$3$2;)V

    const-string v3, "lua"

    invoke-static {v0, v3, v1, p1, v2}, Lcom/nirenr/talkman/util/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    :cond_0
    return-void
.end method
