.class Lcom/nirenr/talkman/CameraActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity$c;->onEnd(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/CameraActivity$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$c$a;->a:Lcom/nirenr/talkman/CameraActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$c$a;->a:Lcom/nirenr/talkman/CameraActivity$c;

    iget-object v0, v0, Lcom/nirenr/talkman/CameraActivity$c;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/CameraActivity;->j(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity$c$a;->a:Lcom/nirenr/talkman/CameraActivity$c;

    iget-object p1, p1, Lcom/nirenr/talkman/CameraActivity$c;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/CameraActivity;->o(Lcom/nirenr/talkman/CameraActivity;)V

    return-void
.end method
