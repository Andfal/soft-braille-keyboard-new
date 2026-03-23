.class public interface abstract Ly2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/o$a;
    }
.end annotation


# static fields
.field public static final a:Ly2/o;

.field public static final b:Ly2/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/o$a;-><init>(Lt2/d;)V

    sput-object v0, Ly2/o;->b:Ly2/o$a;

    new-instance v0, Ly2/o$a$a;

    invoke-direct {v0}, Ly2/o$a$a;-><init>()V

    sput-object v0, Ly2/o;->a:Ly2/o;

    return-void
.end method


# virtual methods
.method public abstract a(Ly2/w;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/w;",
            "Ljava/util/List<",
            "Ly2/n;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ly2/w;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/w;",
            ")",
            "Ljava/util/List<",
            "Ly2/n;",
            ">;"
        }
    .end annotation
.end method
