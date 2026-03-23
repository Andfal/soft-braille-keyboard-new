.class Lc/g$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h0"
.end annotation


# static fields
.field public static final b:Lc/g$h0;

.field public static final c:Lc/g$h0;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/g$h0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/g$h0;-><init>(Z)V

    sput-object v0, Lc/g$h0;->b:Lc/g$h0;

    new-instance v0, Lc/g$h0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/g$h0;-><init>(Z)V

    sput-object v0, Lc/g$h0;->c:Lc/g$h0;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc/g$h0;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-boolean p2, p0, Lc/g$h0;->a:Z

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Lc/g;->l(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p3, p2}, Lc/g;->c(Ljava/lang/Object;Ljava/util/List;)V

    return-object p2
.end method
