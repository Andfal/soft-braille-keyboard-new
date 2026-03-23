.class Lm/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lm/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/m<",
            "**>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lm/m;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/m<",
            "**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "instance fields may not have a value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lm/l$a;->a:Lm/m;

    iput p2, p0, Lm/l$a;->b:I

    iput-object p3, p0, Lm/l$a;->c:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic a(Lm/l$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm/l$a;->c:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget v0, p0, Lm/l$a;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()Lq/o;
    .locals 3

    new-instance v0, Lq/o;

    iget-object v1, p0, Lm/l$a;->a:Lm/m;

    iget-object v1, v1, Lm/m;->e:Lv/j;

    iget v2, p0, Lm/l$a;->b:I

    invoke-direct {v0, v1, v2}, Lq/o;-><init>(Lv/j;I)V

    return-object v0
.end method
