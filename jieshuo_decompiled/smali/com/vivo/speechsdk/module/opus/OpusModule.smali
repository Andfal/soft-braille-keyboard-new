.class public Lcom/vivo/speechsdk/module/opus/OpusModule;
.super Lcom/vivo/speechsdk/common/module/AbsModule;
.source "SourceFile"


# instance fields
.field private a:Lcom/vivo/speechsdk/module/opus/a;

.field private final b:Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/common/module/AbsModule;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/opus/OpusModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/opus/OpusModule$a;-><init>(Lcom/vivo/speechsdk/module/opus/OpusModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/opus/OpusModule;->b:Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;

    return-void
.end method


# virtual methods
.method public getFactory()Lcom/vivo/speechsdk/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vivo/speechsdk/b/b;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/module/opus/OpusModule;->b:Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;

    return-object v0
.end method
