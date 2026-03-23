.class Lcom/nirenr/talkman/CameraActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity$b;->onEnd(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/CameraActivity$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$b$a;->b:Lcom/nirenr/talkman/CameraActivity$b;

    iput-object p2, p0, Lcom/nirenr/talkman/CameraActivity$b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$b$a;->b:Lcom/nirenr/talkman/CameraActivity$b;

    iget-object v0, v0, Lcom/nirenr/talkman/CameraActivity$b;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/CameraActivity;->i(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity$b$a;->b:Lcom/nirenr/talkman/CameraActivity$b;

    iget-object p1, p1, Lcom/nirenr/talkman/CameraActivity$b;->a:Lcom/nirenr/talkman/CameraActivity;

    const v0, 0x7f070447

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nirenr/talkman/CameraActivity$b$a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/CameraActivity;->n(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    return-void
.end method
