.class public final Lh/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ll/c;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ll/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ll/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/l;->a:Ljava/lang/Class;

    iput-object p2, p0, Lh/l;->b:Ll/c;

    invoke-virtual {p2}, Ll/c;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lh/l;->b:Ll/c;

    iget v0, v0, Ll/c;->i:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lh/l;->b:Ll/c;

    iget-boolean v0, v0, Ll/c;->r:Z

    return v0
.end method
