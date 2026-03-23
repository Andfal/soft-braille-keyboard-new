.class final Lx2/q$d;
.super Lt2/g;
.source "SourceFile"

# interfaces
.implements Ls2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx2/q;->g0(Ljava/lang/CharSequence;[CZI)Lw2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt2/g;",
        "Ls2/b<",
        "Lkotlin/ranges/h;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lx2/q$d;->b:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt2/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/ranges/h;

    invoke-virtual {p0, p1}, Lx2/q$d;->d(Lkotlin/ranges/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lkotlin/ranges/h;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx2/q$d;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lx2/q;->m0(Ljava/lang/CharSequence;Lkotlin/ranges/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
