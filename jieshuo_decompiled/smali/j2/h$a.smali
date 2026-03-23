.class Lj2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/h;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/h;


# direct methods
.method constructor <init>(Lj2/h;)V
    .locals 0

    iput-object p1, p0, Lj2/h$a;->a:Lj2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lj2/h$a;->a:Lj2/h;

    invoke-static {v0}, Lj2/h;->c(Lj2/h;)V

    return-void
.end method
