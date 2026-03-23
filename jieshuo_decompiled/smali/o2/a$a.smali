.class final Lo2/a$a;
.super Lt2/g;
.source "SourceFile"

# interfaces
.implements Ls2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/a;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt2/g;",
        "Ls2/b<",
        "TE;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo2/a;


# direct methods
.method constructor <init>(Lo2/a;)V
    .locals 0

    iput-object p1, p0, Lo2/a$a;->b:Lo2/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt2/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo2/a$a;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    iget-object v0, p0, Lo2/a$a;->b:Lo2/a;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
