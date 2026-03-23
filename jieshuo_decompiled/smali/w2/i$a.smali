.class public final Lw2/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lu2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/i;->a(Lw2/c;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lu2/a;"
    }
.end annotation


# instance fields
.field final synthetic a:Lw2/c;


# direct methods
.method public constructor <init>(Lw2/c;)V
    .locals 0

    iput-object p1, p0, Lw2/i$a;->a:Lw2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lw2/i$a;->a:Lw2/c;

    invoke-interface {v0}, Lw2/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
