.class public Lh/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Ld/d;

.field protected final e:[Ll/c;

.field protected final f:[Ll/c;

.field protected g:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ld/d;Ljava/lang/String;Ljava/lang/String;I[Ll/c;[Ll/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ld/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ll/c;",
            "[",
            "Ll/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/b1;->a:Ljava/lang/Class;

    iput-object p2, p0, Lh/b1;->d:Ld/d;

    iput-object p3, p0, Lh/b1;->b:Ljava/lang/String;

    iput-object p4, p0, Lh/b1;->c:Ljava/lang/String;

    iput p5, p0, Lh/b1;->g:I

    iput-object p6, p0, Lh/b1;->e:[Ll/c;

    iput-object p7, p0, Lh/b1;->f:[Ll/c;

    return-void
.end method
