.class Li2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li2/d;


# direct methods
.method constructor <init>(Li2/d;)V
    .locals 0

    iput-object p1, p0, Li2/d$a;->a:Li2/d;

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

    iget-object v0, p0, Li2/d$a;->a:Li2/d;

    invoke-static {v0}, Li2/d;->b(Li2/d;)V

    return-void
.end method
