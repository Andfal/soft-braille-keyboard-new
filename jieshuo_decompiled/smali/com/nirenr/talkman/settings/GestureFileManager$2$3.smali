.class Lcom/nirenr/talkman/settings/GestureFileManager$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureFileManager$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/GestureFileManager$2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureFileManager$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2$3;->b:Lcom/nirenr/talkman/settings/GestureFileManager$2;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2$3;->b:Lcom/nirenr/talkman/settings/GestureFileManager$2;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/GestureFileManager;->a(Lcom/nirenr/talkman/settings/GestureFileManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lua"

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2$3;->b:Lcom/nirenr/talkman/settings/GestureFileManager$2;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/GestureFileManager;->c(Lcom/nirenr/talkman/settings/GestureFileManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2$3;->b:Lcom/nirenr/talkman/settings/GestureFileManager$2;

    iget v3, v3, Lcom/nirenr/talkman/settings/GestureFileManager$2;->a:I

    aget-object v3, v0, v3

    iget-object v4, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2$3;->a:Ljava/lang/String;

    new-instance v6, Lcom/nirenr/talkman/settings/GestureFileManager$2$3$1;

    invoke-direct {v6, p0}, Lcom/nirenr/talkman/settings/GestureFileManager$2$3$1;-><init>(Lcom/nirenr/talkman/settings/GestureFileManager$2$3;)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/nirenr/talkman/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    :cond_0
    return-void
.end method
