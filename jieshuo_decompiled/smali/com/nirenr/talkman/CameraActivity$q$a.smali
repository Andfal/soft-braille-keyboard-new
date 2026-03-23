.class Lcom/nirenr/talkman/CameraActivity$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity$q;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/CameraActivity$q;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity$q;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$q$a;->a:Lcom/nirenr/talkman/CameraActivity$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$q$a;->a:Lcom/nirenr/talkman/CameraActivity$q;

    iget-object v0, v0, Lcom/nirenr/talkman/CameraActivity$q;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/CameraActivity;->n(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    return-void
.end method
