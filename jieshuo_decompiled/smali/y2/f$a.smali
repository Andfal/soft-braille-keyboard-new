.class public final Ly2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/f$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly2/f$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ly2/f;
    .locals 4

    new-instance v0, Ly2/f;

    iget-object v1, p0, Ly2/f$a;->a:Ljava/util/List;

    invoke-static {v1}, Lo2/k;->J(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Ly2/f;-><init>(Ljava/util/Set;Lk3/c;ILt2/d;)V

    return-object v0
.end method
