from typing import TypeVar, Generic

from pydantic import BaseModel, computed_field


M = TypeVar('M', bound=BaseModel)


class Pagination(BaseModel, Generic[M]):
    """
    Generic schema for paginated list responses.

    This schema provides a standardized structure for API endpoints that return
    paginated lists of items. It includes the actual items along with
    pagination metadata.

    Type Parameters:
        M: The type of items in the list (defaults to BaseModel).

    Attributes:
        items (list[M]): The list of items for the current page.
        total (int): Total number of items across all pages.
        limit (int): Number of items per page.
        offset (int): Index of the first item in the current page.
    """
    items: list[M]
    total: int
    limit: int
    offset: int

    @computed_field
    @property
    def total_pages(self) -> int:
        return (self.total + self.limit - 1) // self.limit


class List(Pagination, Generic[M]):
    pass
